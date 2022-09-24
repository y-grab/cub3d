# cub3d
![cub](https://user-images.githubusercontent.com/114160712/192012370-a7865c9c-328d-4283-ae93-4aa4c466ba5c.png)

It's a really small maze game with no objective. It's only made in C using MiniLibX graphic library. The main goal was to recreate the first FPS, Wolfenstein 3D. This game is using raycasting render to create a 3D illusion.  

Controls: WASD to move, left and right arrows to rotate point of view, ESC - exit.  
Program takes a scene description .cub file as a first argument. It contains paths to textures, floor and ceiling colors and a map.  
The map must be composed of only 6 possible characters: 0 for an empty space, 1 for a wall, and N,S,E or W for the player’s start position and spawning orientation. The map must be closed/surrounded by walls.  
Displays different wall textures that vary depending on which side the wall is facing (North, South, East, West).

Implemented bonus part features:  
- Wall collisions  
- Minimap  
- Doors which can open and close 
- Mouse camera control  

For more information see [subject](https://github.com/y-grab/cub3d/blob/main/subject/cub3d_subject.pdf)
