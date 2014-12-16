
##Battle Ships

###Ships
Responsibility	|  Collaborators | Status
----------------|----------------|--------
Be hit?         | Player         | Pending
Be destroyed?   | -              | Pending
length          | -              | Done
Coordinates     | -              | Done


###Players
Responsibility	|  Collaborators | Status
----------------|----------------|--------
play/shoot    	| Ships, Board   | 
place ship    	| Ships, Board   | 
         		    


###Board
Responsibility	|  Collaborators | Status
----------------|----------------|---------
create_board    | -              | Done
receive_shot    | Player, Ships  |
ship_list	      | Ships          | ?
hit_list      	| Player, Ships  |


###Game
Responsibility  |  Collaborators | Status
----------------|----------------|--------
Start Game      |
Stop Game       |
