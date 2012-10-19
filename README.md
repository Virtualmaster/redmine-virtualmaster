redmine_json_time_report
========================

a plugin to redmine to query json issues with time entries


- this is simple extension to existing :
    http://www.redmine.org/projects/redmine/wiki/Rest_Issues
    you can combine queries as described there

list all issues with time entries

http://redmine.example/json_time.json?&include=time_entries

list issues with specific status(New) with time entries

http://redmine.example/json_time.json?status_id=1&include=time_entries

