--[[
Basic Vehicle AI system
Version 1.0
By Chris



Overview:
----------------
This is a basic system for making vehicles drive places you want
them to drive.  It works using the Vehicle Input Hooks, which
allow a script to set vehicle steering and acceleration the same
way a player would.


Setup:
----------------
Just drag the Basic Vehicle AI SAMPLE template onto your scene,
and watch it go!  The car will drive around the track, specified
by the glowing spheres.

That's it!


Using the vehicle AI:
----------------
There is a script called VAI_Driver.  You can stick it into any
vehicle, and it will drive it around.  (The sample here is just
using one of the built-in vehicles from core content.)  You can
specify the path it will follow by making a folder and filling
it with objects.  (And specifying it as the TrackMarkers folder
as a custom property of the script.)

The script will then attempt to drive to each object, one after
another.  Once it gets close to one, it will go to the next one,
in the order they are specified in the hierarchy.  You can make
tracks as long or as short as you like, and you can use the same
track for multiple vehicles.


Caveats:
----------------
The vehicles are pretty dumb.  They simply try to drive towards
the next checkpoint.  If things are in the way, they'll run
into them.  If they get stuck, they'll get stuck.  This is not
a complicated AI.  But if you need to make a car drive to a point,
or drive around in a track, then this is the script for you!

]]