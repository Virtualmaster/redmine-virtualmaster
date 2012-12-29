Virtualmsater Redmine extensiion
========================

##Api extensions

**Issues**
- this is simple extension to existing :
    http://www.redmine.org/projects/redmine/wiki/Rest_Issues
    you can combine queries as described there

list all issues with time entries

http://redmine.example/json_time.json?&include=time_entries

list issues with specific status(New) with time entries

http://redmine.example/json_time.json?status_id=1&include=time_entries

**News**

create new news

POST /projects/virtualmaster-infrastructure/news.json
  json data
  { "news": { 
    "title": "I'm now pilot behind the Steering wheel", 
    "summary": "{\"steering_wheel\":{\"action\":\"grab\"}}", "description": 
    "I'm in duty now. I promise I'll do my best when navigating the Rocket and I'll avoid all that steroids."
    }
  }

##External Javasritpt widgets lazy-loading

see: app/views/hooks/_view_layouts_base_body_bottom.erb

##Configuration
Widget remote url is confgigurable by `widget_url` in `virtualmaster` plugin config
section.

##Development

You can set source of loaded widget URL for deveopment porposes without
changing plugin configuration and reloading ruby server by setting
browsers `localStorage` variable.


    > localStorage.virtualmaster_redmine_plugin_widget_url
    =>"http://static.vmin.cz/redmine_billing/application.js"
    > localStorage.virtualmaster_redmine_plugin_widget_url \
    > = 'http://localhost:8080/redmine_billing/application.js'
    =>"http://localhost:8080/redmine_billing/application.js" 


**DO NOT FORGET TO SERVE IT WITH WIDE CORS HEADERS!**

**DO NOT FORGET TO SWITCH IT BACK TO PRODUCTION URL!**

##FUTURE
- let client set javscript to laod (dev/prod env, different extension for clients and admins )