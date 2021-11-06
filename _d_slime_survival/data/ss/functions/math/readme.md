# Math Directory
Functions located in `ss:math` are typically used to calculate, store, and recall numbers.

Said functions are divided into two main categories.

## Utility (util)
These functions do not work to modify or calculate entity-related variables, but rather global or scoreboard related variables.

They're usually called via the datapack's runtime operations or via localized executions by the player or command blocks.
They typically require direct or pre-existing inputs.

Some utility functions have the ability to apply their calculations to global variables such as day/time.

## Player (ply) and Entity (ent)
These functions function independently of any pre-existing variables, apart from some integral constants such as UUID.

They typically calculate and store information into scoreboards, attributes, and/or entities.


# Src Math
Found in `ss:src`.

Contains the basic concept of some of the math functions translated into lua for easier understanding
