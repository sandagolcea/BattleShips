###Sam's morning lecture - week2 - day1

##Code review
*rubber ducking? - http://www.amazon.co.uk/YELLOW-ONESIE-COSTUME-TEENAGERS-HALLOWEEN/dp/B00F9HZP8G*

##Battle Ships

###Ships
Responsibility	|  Collaborators
----------------|-------------------
Be hit?     	|   Player
Be destroyed?   | 	Player
         		|

###Players
Responsibility	|  Collaborators
----------------|-------------------
play/shoot    	|	Ships, Board
place ship    	| Ships, Board
         		|


###Board
Responsibility	|  Collaborators
----------------|-------------------
has_ships	    |     Ships
hit_list    	| 	Player, (Ships?)


Proposition:

* `shot_list = [A1, C4]`
* `kill_list + delete << hit_list[].select `
* `kill_list[] -> ships[killed]`

Just like piping:
shot_list | hit_list | kill_list


###Cell?
Responsibility	|  Collaborators
----------------|-------------------
       		    |
         		| 
         		|
