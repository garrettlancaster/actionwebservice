require 'pp'
# encoding: UTF-8
class Class # :nodoc:
  class_attribute :inheritable_attrs
  EMPTY_INHERITABLE_ATTRIBUTES = {}.freeze
  
  def inheritable_attributes
    @inheritable_attributes ||= EMPTY_INHERITABLE_ATTRIBUTES
  end

  def read_inheritable_attribute(key)
    inheritable_attributes[key]
  end

  def write_inheritable_attribute(key, value)
    if inheritable_attributes.equal?(EMPTY_INHERITABLE_ATTRIBUTES)
      @inheritable_attributes = {}
    end
    inheritable_attributes[key] = value
  end

  def write_inheritable_hash(key, hash)
    write_inheritable_attribute(key, {}) if read_inheritable_attribute(key).nil?
    write_inheritable_attribute(key, read_inheritable_attribute(key).merge(hash))
  end

  def write_inheritable_array(key, arr)
    write_inheritable_attribute(key, []) if read_inheritable_attribute(key).nil?
    write_inheritable_attribute(key, read_inheritable_attribute(key) + arr)
  end

  def class_inheritable_option(sym, default_value=nil)
    write_inheritable_attribute('sym', default_value)
    class_eval <<-EOS
      def self.#{sym}(value=nil)
        if !value.nil?
          write_inheritable_attribute(:#{sym}, value)
        else
          read_inheritable_attribute(:#{sym})
        end
      end
      
      def self.#{sym}=(value)
        write_inheritable_attribute(:#{sym}, value)
      end

      def #{sym}
        self.class.#{sym}
      end

      def #{sym}=(value)
        self.class.#{sym} = value
      end
    EOS
  end
end
