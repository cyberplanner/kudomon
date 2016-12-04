# Kudomon GO!
Credit Kudos' Technical Challenge.

### The Plan V.1:

* The app is simple so let's keep it simple. I could build it in pure ruby but for the sake of making things easier for myself I'll use sinatra (Rails is a bit on an over-kill).

* I will need a main class `Creature/Kudomon class` and a few smaller calsses.

* I will need a `Player/Trainer class`.


#### Domain Model:
```
.
+-- Player/Trainer class
|
+-- Creature/Kudomon class
|   +-- GrassType class
|       +--Sourbulb species
|   +-- FireType class
|       +--Mancharred species
|   +-- ElectricType class
|       +--Chikapu species
|   +-- WaterType class
|       +--PlopPlop species
|   +-- RockType class
|       +--Balboa species
|   +-- PsychicType class
|       +-- Neo species
.
```
### The Plan V.2:
* I refactored all Types into the Kudomon classes as I felt it I was over-engenering things to impress! that also makes the code a lot cleaner and more readable:
```
.
+-- Player/Trainer class
|
+-- Creature/Kudomon class
|   +-- Grass Type
|       +--Sourbulb species
|   +-- Fire Type
|       +--Mancharred species
|   +-- Electric Type
|       +--Chikapu species
|   +-- Water Type
|       +--PlopPlop species
|   +-- Rock Type
|       +--Balboa species
|   +-- Psychic Type
|       +-- Neo species
.
```
* I introduced a Sinatra app layer on top of the logic I implemented earlier.
