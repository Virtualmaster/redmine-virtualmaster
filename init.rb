require 'redmine'

require_dependency 'virtualmaster/hooks'

# Patches to the Redmine core.
require 'dispatcher'


Redmine::Plugin.register :virtualmaster do
  name 'Virtualmaster plugin'
  author 'Jakub Kuchar, Adam Kliment'
  description 'REST AAP extension end async JS widget loader'
  version '0.0.1'
  url 'https://github.com/Virtualmaster/redmine-virtualmaster'
  #author_url 'http://example.com/about'
  
  settings :default => { 'widget_url' => "http://static.vmin.cz/redmine_billing/application.js" }  

  NewsController.send(:include, NewsControllerPatch)
end

