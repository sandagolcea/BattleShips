###Sam's morning lecture - week2 - day1

##Code review
*rubber ducking? - http://www.amazon.co.uk/YELLOW-ONESIE-COSTUME-TEENAGERS-HALLOWEEN/dp/B00F9HZP8G*

Doing this week: Battle Ships

###Steve's morning lecture - week2 - day2

##SOLID principles
#####Clint and I are O

Where do you start ? : CRC

Main component: Game. Board. Ships, ...*pins? Players

Where do we start?

###Ships
Ships - because it's the simplest element. start with the basic!

Responsibility                                |  Collaborator
----------------------------------------------|---------------------
Floating? / Destroyed? / Sunk? - boolean      | Player, Board
Size / Length - integer (Fixnum)              | self
Hits or Hit count - integer?                  | self, Board?
..Can be placed?                              | Board, Player, Game?


###Board
Responsibility                                |  Collaborator
----------------------------------------------|---------------------
Place ships                                   | Ships
Shoot_at                                      | Ships? self
..Cells: hit, content: ship, water,           | Ships
Ready to play?                                | Player, Ships
get floating ships?                           | Player, Ships

###Game
Responsibility                                |  Collaborator
----------------------------------------------|---------------------
Decide if there's a winner/loser              | Player, Ships, Board
Start_game / End_game                         | Player, Ships, Board
Player turns (knows whose turn it is):        | Player, Ships, Board
you have Player1 and Player2 inside the game  | Player
Get_shot & pass it to the board               | Player, Ships, Board

Again
###GAME
|_______Player1
|     
|_______Player2 __
                  |
                  Board__
                         |
                         Cells
                              |_____ Ship
                              |_____ Water




* Single Responsibility Principle:
  A class can only have one responsibility
* Open/
