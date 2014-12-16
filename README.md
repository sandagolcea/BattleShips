
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
receive_shot    | Player, Ships  | 50% Done
hit_list        | Player, Ships  | Untouched, like a virgin
ship_list	      | Ships          | In Progress



###Game
Responsibility  |  Collaborators | Status
----------------|----------------|--------
Start Game      |
Stop Game       |
