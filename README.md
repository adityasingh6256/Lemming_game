# Lemming_game_FSM
Designing Lemming game using verilog and doing simultation ,Functional verification,RTL to GDS flow.
## Introduction   
The game Lemmings involves critters with fairly simple brains. So simple that we are going to model it using a finite state machine.
In the Lemmings' 2D world,Lemmings can walk left and right, fall and dig.During walking left or walking right, It will switch directions if it hits an obstacle. In particular, if a Lemming is bumped on the left, it will walk right. If it's bumped on the right, it will walk left. If it's bumped on both sides at the same time, it will still switch directions. Lemmings will fall (and presumably go "aaah!") if the ground disappears underneath them.
In addition to walking left and right and changing direction when bumped, when ground=0, the Lemming will fall and say "aaah!". When the ground reappears (ground=1), the Lemming will resume walking in the same direction as before the fall. Being bumped while falling does not affect the walking direction, and being bumped in the same cycle as ground disappears (but not yet falling), or when the ground reappears while still falling, also does not affect the walking direction.
In addition to walking and falling, Lemmings can sometimes be told to do useful things, like dig (it starts digging when dig=1). A Lemming can dig if it is currently walking on ground (ground=1 and not falling), and will continue digging until it reaches the other side (ground=0). At that point, since there is no ground, it will fall (aaah!), then continue walking in its original direction once it hits ground again. As with falling, being bumped while digging has no effect, and being told to dig when falling or when there is no ground is ignored.
(In other words, a walking Lemming can fall, dig, or switch directions. If more than one of these conditions are satisfied, fall has higher precedence than dig, which has higher precedence than switching directions.)
Although Lemmings can walk, fall, and dig, Lemmings aren't invulnerable. If a Lemming falls for too long then hits the ground, it can splatter. In particular, if a Lemming falls for more than 20 clock cycles then hits the ground, it will splatter and cease walking, falling, or digging (all 4 outputs become 0), forever (Or until the FSM gets reset). There is no upper limit on how far a Lemming can fall before hitting the ground. Lemmings only splatter when hitting the ground; they do not splatter in mid-air.

Lets create finite state machine to model this behaviour.


## Simultation waveform
count value in waveform is in hexadecimal.
![lemming_simulation](https://github.com/adityasingh6256/Lemming_game/assets/110079790/3ec791fa-d8f3-4d41-bdb8-81121d45f424)

