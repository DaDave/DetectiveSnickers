# Detective Snickers - Design Document

## Introduction

### Game Summary

The game is an 2D-Adventure in which you solve a murder case as Detective Snickers. Detective Snickers is an old-school detective, the best of the best. There hasn't been a case in his long career that he couldn't solve by using his only ability: showing them his trusty card and shouting his name in their face, winning the admiration of his peers.

### Inspiration

**Inspiration A**

McPixel

**Inspiration B**

Pokemon red/blue/yellow

### Player Experience

The player controls Detective Snickers through 2D scenes and discovers the clue to the murderer by interacting with the people and objects in the rooms

### Platform

The game is developed to be playable in web.

### Development Software

* Godot as game engine
* Aseprite for animations

### Genre

- Adventure
- Singleplayer

### Target Audience

The game is designed for people who want a fun but also exciting adventure experience where the protagonist has only one skill and must use it to solve the murder case through showing people his trusty card and shouting his name in their face

## Concept

### Gameplay overview

The player navigates the officer through the scenes by using arrow keys on the map. With the “I'M DETECTIVE SNICKERS” ability, the player interacts with the people and objects in the room

### Theme Interpretation (One Ability)

With the “I'M DETECTIVE SNICKERS” ability, the character can interact with objects and people verbally and by holding up his ID card. The right timing plays a decisive role here.

### Special Object Interpretation (Card)

Detective Snickers gains authority by holding up his ID card. Objects that see his ID reveal information out of fear.

### Mechanics


| Mechanic                | Description                                                                                                         |
|-------------------------|---------------------------------------------------------------------------------------------------------------------|
| Movement                | By pressing W,A,S,D (or arrow keys) the player moves the inspector through the room.                                                       |
| "I'M DETECTIVE SNICKERS" | When the ability button SPACEBAR is pressed, the detective draws attention to himself verbally and by holding up his ID card |

## Art & Audio

### Design

- 2D-Pixel-Art-Package (https://limezu.itch.io/moderninteriors)
- 2D-Pixel-Art-Package (https://limezu.itch.io/modernexteriors)

  ![image](https://github.com/DaDave/DetectiveSnickers/assets/18548898/e86f54f8-464f-42d4-98bd-4a3480128820)


### Music

- mostly self created 8-bit music

### Sound Effects

- mostly self created by https://sfxr.me/

## Game Experience

### Controls

- W, A, S, D (movement)
- arrow keys (movement)
- SPACEBAR (interaction)

## Development Timeline

### Minimum Viable Product

| #  | Assignment | Type | Status | Issue | Notes |
|----|------------|------|--------|-------|-------|
| 1  | Design document | DOCUMENTATION | DONE | https://github.com/DaDave/JameGam-31/issues/1 |  |
| 2  | Main character | ART | DONE | https://github.com/DaDave/JameGam-31/issues/2 |  |
| 3  | Rooms | ART | DONE | https://github.com/DaDave/JameGam-31/issues/3 | Planned 5 rooms, finished 4 rooms |
| 4  | Main menu | CODING | DONE | https://github.com/DaDave/JameGam-31/issues/4 |  |
| 5  | Main menu music | AUDIO | DONE | https://github.com/DaDave/JameGam-31/issues/5 |  |
| 6  | Main character movement and ability | CODING | DONE | https://github.com/DaDave/JameGam-31/issues/8 |  |
| 7  | Rooms music | AUDIO | DONE | https://github.com/DaDave/JameGam-31/issues/9 | changed from 'one music for all rooms' to 'one music each room' |
| 8  | Pause menu | CODING | DONE | https://github.com/DaDave/JameGam-31/issues/10 |  |
| 9  | Final changes | OTHERS | DONE | https://github.com/DaDave/JameGam-31/issues/11 |  |
| 10 | Upload game | OTHERS | DONE | https://github.com/DaDave/JameGam-31/issues/12 |  |

### Next Steps

- more rooms
- support for mobile devices
- code cleanup
- more interactives for existing rooms
