
##Battle Ships

###Ships
Responsibility	|  Collaborators
----------------|-------------------
Be destroyed?   | - 
length          | - 
Be hit?     	  | Player
         		    |

###Players
Responsibility	|  Collaborators
----------------|-------------------
play/shoot    	| Ships, Board
place ship    	| Ships, Board
         		    |


###Board
Responsibility	|  Collaborators
----------------|-------------------
create_board    | -
has_ships	      | Ships
hit_list      	| Player, Ships

###Game
Responsibility  |  Collaborators
----------------|-------------------
Start Game      |
Stop Game       |
