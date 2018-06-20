# -*- encoding: utf-8 -*-
# stub: actionwebservice 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "actionwebservice".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Laurence A. Lee, Leon Breedt, Kent Sibilev".freeze]
  s.autorequire = "actionwebservice".freeze
  s.date = "2018-06-19"
  s.description = "Adds WSDL/SOAP and XML-RPC web service support to Action Pack".freeze
  s.email = "rubyjedi@gmail.com, bitserf@gmail.com, ksibilev@yahoo.com".freeze
  s.files = ["CHANGELOG".freeze, "MIT-LICENSE".freeze, "README".freeze, "Rakefile".freeze, "TODO".freeze, "examples/googlesearch".freeze, "examples/googlesearch/README".freeze, "examples/googlesearch/autoloading".freeze, "examples/googlesearch/autoloading/google_search_api.rb".freeze, "examples/googlesearch/autoloading/google_search_controller.rb".freeze, "examples/googlesearch/delegated".freeze, "examples/googlesearch/delegated/google_search_service.rb".freeze, "examples/googlesearch/delegated/search_controller.rb".freeze, "examples/googlesearch/direct".freeze, "examples/googlesearch/direct/google_search_api.rb".freeze, "examples/googlesearch/direct/search_controller.rb".freeze, "examples/metaWeblog".freeze, "examples/metaWeblog/README".freeze, "examples/metaWeblog/apis".freeze, "examples/metaWeblog/apis/blogger_api.rb".freeze, "examples/metaWeblog/apis/blogger_service.rb".freeze, "examples/metaWeblog/apis/meta_weblog_api.rb".freeze, "examples/metaWeblog/apis/meta_weblog_service.rb".freeze, "examples/metaWeblog/controllers".freeze, "examples/metaWeblog/controllers/xmlrpc_controller.rb".freeze, "generators/web_service".freeze, "generators/web_service/USAGE".freeze, "generators/web_service/templates".freeze, "generators/web_service/templates/api_definition.rb".freeze, "generators/web_service/templates/controller.rb".freeze, "generators/web_service/templates/functional_test.rb".freeze, "generators/web_service/web_service_generator.rb".freeze, "lib/action_web_service".freeze, "lib/action_web_service.rb".freeze, "lib/action_web_service/acts_as_web_service.rb".freeze, "lib/action_web_service/api.rb".freeze, "lib/action_web_service/base.rb".freeze, "lib/action_web_service/casting.rb".freeze, "lib/action_web_service/client".freeze, "lib/action_web_service/client.rb".freeze, "lib/action_web_service/client/base.rb".freeze, "lib/action_web_service/client/soap_client.rb".freeze, "lib/action_web_service/client/xmlrpc_client.rb".freeze, "lib/action_web_service/container".freeze, "lib/action_web_service/container.rb".freeze, "lib/action_web_service/container/action_controller_container.rb".freeze, "lib/action_web_service/container/delegated_container.rb".freeze, "lib/action_web_service/container/direct_container.rb".freeze, "lib/action_web_service/dispatcher".freeze, "lib/action_web_service/dispatcher.rb".freeze, "lib/action_web_service/dispatcher/abstract.rb".freeze, "lib/action_web_service/dispatcher/action_controller_dispatcher.rb".freeze, "lib/action_web_service/invocation.rb".freeze, "lib/action_web_service/protocol".freeze, "lib/action_web_service/protocol.rb".freeze, "lib/action_web_service/protocol/abstract.rb".freeze, "lib/action_web_service/protocol/discovery.rb".freeze, "lib/action_web_service/protocol/soap_protocol".freeze, "lib/action_web_service/protocol/soap_protocol.rb".freeze, "lib/action_web_service/protocol/soap_protocol/marshaler.rb".freeze, "lib/action_web_service/protocol/xmlrpc_protocol.rb".freeze, "lib/action_web_service/scaffolding.rb".freeze, "lib/action_web_service/simple.rb".freeze, "lib/action_web_service/string_to_datetime_for_soap.rb".freeze, "lib/action_web_service/struct.rb".freeze, "lib/action_web_service/support".freeze, "lib/action_web_service/support/class_inheritable_options.rb".freeze, "lib/action_web_service/support/signature_types.rb".freeze, "lib/action_web_service/templates".freeze, "lib/action_web_service/templates/scaffolds".freeze, "lib/action_web_service/templates/scaffolds/layout.html.erb".freeze, "lib/action_web_service/templates/scaffolds/methods.html.erb".freeze, "lib/action_web_service/templates/scaffolds/parameters.html.erb".freeze, "lib/action_web_service/templates/scaffolds/result.html.erb".freeze, "lib/action_web_service/test_invoke.rb".freeze, "lib/action_web_service/version.rb".freeze, "lib/actionwebservice.rb".freeze, "setup.rb".freeze, "test/abstract_client.rb".freeze, "test/abstract_dispatcher.rb".freeze, "test/abstract_unit.rb".freeze, "test/api_test.rb".freeze, "test/apis".freeze, "test/apis/auto_load_api.rb".freeze, "test/apis/broken_auto_load_api.rb".freeze, "test/base_test.rb".freeze, "test/casting_test.rb".freeze, "test/client_soap_test.rb".freeze, "test/client_xmlrpc_test.rb".freeze, "test/container_test.rb".freeze, "test/dispatcher_action_controller_soap_test.rb".freeze, "test/dispatcher_action_controller_xmlrpc_test.rb".freeze, "test/fixtures/db_definitions".freeze, "test/fixtures/db_definitions/mysql.sql".freeze, "test/fixtures/db_definitions/sqlite3.sql".freeze, "test/fixtures/users.yml".freeze, "test/gencov".freeze, "test/invocation_test.rb".freeze, "test/run".freeze, "test/scaffolded_controller_test.rb".freeze, "test/struct_test.rb".freeze, "test/test_invoke_test.rb".freeze]
  s.homepage = "http://wiki.github.com/rubyjedi/actionwebservice/".freeze
  s.requirements = ["none".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Web service support for Action Pack.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_dependency('activesupport'.freeze, ["~> 3.2"])
  s.add_dependency('actionpack'.freeze, ["~> 3.2"])
  s.add_dependency('activerecord'.freeze, ["~> 3.2"])
  s.add_runtime_dependency('ox')         # For faster XML Parsing, use Ox or Nokogiri. Ox has highest priority if available.
  s.add_runtime_dependency('nokogiri')   # For faster XML Parsing. If neither Ox nor Nokogiri available, we'll fall back to REXML.
  s.add_runtime_dependency('httpclient') # Absolutely necessary for soap4r-ng. Net::HTTP Fallback is quite broken, so don't let that happen.
  s.add_runtime_dependency('soap4r-ng')

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rails', '~> 3.2'
  s.add_development_dependency 'test-unit'
  s.add_development_dependency 'sqlite3'
  s.add_dependency 'xmlrpc'
end
