module Soap
  module StringToDatetimeForSoap
    def to_datetime
      if /^([+\-]?\d{4,})-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d(?:\.(\d*))?)(Z|(?:[+\-]\d\d:\d\d)?)?$/ =~ self.strip
        return Time.xmlschema(self).localtime
      end
      super
    end
  end
end

String.send :include, Soap::StringToDatetimeForSoap
