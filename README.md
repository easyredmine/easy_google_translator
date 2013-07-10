#Easy Redmine - Easy Google Translator plugin

Easy Redmine - plugin to Redmine (http://www.redmine.org)
Copyright (C) 2008-2013  Easy Software, s.r.o.
http://www.easyredmine.com


## Requirements

Easy Redmine. See [redmine_root]/plugins/easyproject/doc/INSTALL

## Installation

1. Make sure your Easy Redmine is working. 
   You can found how-to at [redmine_root]/plugins/easyproject/doc/INSTALL.

2. Extract zip package to the Easy Redmine plugins directory ([redmine_root]/plugins/easyproject/easy_plugins). 
   The directory structure will look like:
     [redmine_root]/plugins/easyproject/easy_helpers/*
     [redmine_root]/plugins/easyproject/easy_plugins/easy_extensions/*
     [redmine_root]/plugins/easyproject/easy_plugins/easy_google_translator/*
     [redmine_root]/plugins/easyproject/easy_plugins/easy_redmine/*
     [redmine_root]/plugins/easyproject/easy_plugins/*  

3. Under the application main directory run:
     bundle exec rake easyproject:install RAILS_ENV=production
   
4. Start your Redmine application server. E.g. under the application main directory run:
     bundle exec ruby script/rails server -e production

## References

* http://www.easyredmine.com/support