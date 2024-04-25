# mvc-with-and-without-a-framework
Slides and code for my preso "MVC With and Without a Framework"

There are several "webroot" folders in this project:

www_legacy
www_mvc
www_fw1
www_coldbox

Each is their own web server. You'll need to "cd" into each folder and run the corresponding "box server start" command to spin them up.

At the monent, the databases are all Derby which means this is an Adobe CF project only -- it will not load in Lucee.

There is a docker-compose file that spins up MySQL but it was giving me some trouble so I switched to Lucee for the time being.  Will look at refactoring this so it's compatible with ACF and Lucee later on. 

Enjoy!
