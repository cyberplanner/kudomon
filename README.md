# Kudomon GO!
Credit Kudos' Technical Challenge.

### The Plan V.1:

* The app is simple so let's keep it simple. I could build it in pure ruby but for the sake of making things easier for myself I'll use sinatra (Rails is a bit on an over-kill).

* I will need a main class `Creature/Kudomon class` and a few smaller calsses.

* I will need a `Player/Trainer class`.

* I will need an `Area/Map class`
```
.
+-- Player/Trainer class
|
+-- Area/Map class
|
+-- Creature/Kudomon class
|   +-- GrassType class
|       +--Sourbulb class
|   +-- FireType class
|       +--Mancharred class
|   +-- ElectricType class
|       +--Chikapu class
|   +-- WaterType class
|       +--PlopPlop class
|   +-- RockType class
|       +--Balboa class
|   +-- PsychicType class
|       +-- Neo class
.
```

#### Trainer class:
    * Has location.

#### Area class:
    * Has deminsions.
#### Kudomon class:
    * Has location
