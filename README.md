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

##FUTURE
- let client set javscript to laod (dev/prod env, different extension for clients and admins )