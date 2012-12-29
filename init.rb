require 'redmine'

require_dependency 'virtualmaster/hooks'

# Patches to the Redmine core.
require 'dispatcher'


Redmine::Plugin.register :redmine_json_time_report do
  name 'Redmine Json Time Report plugin'
  author 'Jakub Kuchar'
  description 'This is a plugin for Redmine to generate json time track'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  NewsController.send(:include, NewsControllerPatch)
end

