# Sinatra Quickstart
This repo has everything you need to start your Sinatra project off on the right foot.

## Opinionated Stuff
This quickstart comes with:

* [Unicorn](http://unicorn.bogomips.org/) for the web server
* [Grunt.js](http://gruntjs.com/) for some misc tasks
* [HTML5 Boilerplate](http://html5boilerplate.com/)

## Rake Tasks
Included are some rake tasks to get you started. All the configs for this are in `unicorn.rb`

* `rake unicorn:start`: start the unicorn server
* `rake unicorn:stop`: stop the unicorn server
* `rake unicorn:restart`: restart the unicorn server
* `rake unicorn:increment`: add workers
* `rake unicorn:decrement`: remove workers
* `rake unicorn:tree`: show the unicorn process tree

## Grunt.js Tasks
Also included are some Grunt.js tasks:

* `grunt build`: minify all the javascript into `application.min.js`

## Some other features
There's a helper configured that will load `application.min.js` instead of the individual JS files on a production environment.