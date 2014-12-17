
##Battle Ships

###Ships
Responsibility	|  Collaborators | Status
----------------|----------------|--------
take_hit        | Player, Board  | Pending
Be destroyed?   | -              | Pending
length          | -              | Done
Coordinates     | -              | Done
hit_list        | -              | Pending

TODO: RENAME Ships to Ship


###Players
Responsibility	|  Collaborators | Status
----------------|----------------|--------
play/shoot    	| Ships, Board   | 
place ship    	| Ships, Board   | 
         		    


###Board
Responsibility	|  Collaborators | Status
----------------|----------------|---------
create_board    | -              | Done
receive_shot    | Player, Ships  | Queue 1
add_ship        | Ships          | Done
ship_list       | Ships          | Done


###Game
Responsibility  |  Collaborators | Status
----------------|----------------|--------
Start Game      |                |
Stop Game       |                |
Handles Gameplay|                |
