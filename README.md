# AIRPORT CHALLENGE

Creating a model of an airport in Ruby, using TDD to drive the project.

This is a reboot of the week 1 challenge at Makers Academy, honing the basics of TDD and BDD. Object Oriented Fun!

## Task

"We have a request from a client to write the software to control the flow of planes at an airport. The planes can land and take off, provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off. Here are the user stories that we worked out in collaboration with the client:"

```
As a pilot
So that I can arrive at my specified destination
I would like to land my plane at the appropriate airport [x]

As a pilot
So that I can set off for my specified destination
I would like to be able to take off from the appropriate airport [x]

As an air traffic controller
So that I can avoid collisions
I want to be able to prevent airplanes landing when the airport is full [x]

As an air traffic controller
So that I can avoid accidents
I want to be able to prevent airplanes landing and taking off when the weather is stormy [ ]
```

## Other points:

- Use a random number generator to set the weather (it is normally sunny but on rare occasions it may be stormy)
- Every plane must have a status indicating whether it's flying or landed.