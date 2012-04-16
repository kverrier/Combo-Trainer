#Combo Trainer

---

## Overview

This is a web application created for users to train timing accuracy of
button sequences, commonly referred to as
[combos](http://en.wikipedia.org/wiki/Combo_\(video_gaming\)), for the
cult classic fighting game [Street Fighter III: 3rd
Strike](http://en.wikipedia.org/wiki/Street_Fighter_III:_3rd_Strike).


## Live Versions
[Latest Version](http://floating-journey-3753.herokuapp.com/)

[First Build](http://electric-window-8954.herokuapp.com)


## Implementation

Created with Ruby On Rails MVC framework. The character data is parsed
from csv files and users create sequences of moves that are stored on
the server. The sequences are then loaded into a JavaScript training
engine that interprets the data as events that are put into a discrete
event simulation buffer, polling at 1/60th of a second (1 video frame).
User input is cross-referenced to the current state of the simulator to
give instant feedback (i.e.  early, on-time, or late).  This is repeated
for each move in the sequence. Once the simulation is finished, the user
can repeat the practice process as often as desired to establish
consistent accuracy.

