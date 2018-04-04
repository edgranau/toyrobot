# Robot Challenge

## Description

* The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
* There are no other obstructions on the table surface.
* The robot is free to roam around the surface of the table, but must be prevented from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.

Create an application that can read in commands of the following form:

```txt
PLACE X,Y,F
MOVE
LEFT
RIGHT
REPORT
```

* PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
* The origin (0,0) can be considered to be the SOUTH WEST most corner.
* The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command. The application should discard all commands in the sequence until a valid PLACE command has been executed.
* MOVE will move the toy robot one unit forward in the direction it is currently facing.
* LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
* REPORT will announce the X,Y and orientation of the robot.
* A robot that is not on the table can choose to ignore the MOVE, LEFT, RIGHT and REPORT commands.
* Provide test data to exercise the application.

## Constraints

The toy robot must not fall off the table during movement. This also includes the initial placement of the toy robot.
Any move that would cause the robot to fall must be ignored.

Example Input and Output:

```txt
PLACE 0,0,NORTH
MOVE
REPORT
Output: 0,1,NORTH
```

```txt
PLACE 0,0,NORTH
LEFT
REPORT
Output: 0,0,WEST
```

```txt
PLACE 1,2,EAST
MOVE
MOVE
LEFT
MOVE
REPORT
Output: 3,3,NORTH
```

## Deliverables

The source files, the test data and any test code (as well as explanations of how to run everything).

## Expectations

We're not just looking for any old solution that would solve the problem. We're looking for:

* production quality code
* good OO or functional practices
* a solid testing approach
* well thought out naming
* solid error handling
* extensibility/maintainability/*ility
* good design
* separation of concerns
* sensible breakdown of code into files/modules
* use of best practices when it comes to JS, CSS, testing etc.
* appropriate use of tools/frameworks
* etc

Basically treat the coding test as if it's part of a larger problem.

## Test it

```bash
bundle exec rspec
# ...
# Finished in 0.01275 seconds (files took 0.13895 seconds to load)
# 45 examples, 0 failures

# Coverage report generated for RSpec to ./coverage. 199 / 199 LOC (100.0%) covered.
```

## Install it locally

```bash
bundle exec rake install
# toyrobot 0.1.0 built to pkg/toyrobot-0.1.0.gem.
# toyrobot (0.1.0) installed.
```

## Use it

```bash
exe/toyrobot spec/fixtures/commands1.txt
# 0,1,NORTH
exe/toyrobot spec/fixtures/commands2.txt
# 0,0,WEST
exe/toyrobot spec/fixtures/commands3.txt
# 3,3,NORTH
exe/toyrobot spec/fixtures/commands4.txt
# 0,0,NORTH
exe/toyrobot spec/fixtures/commands5.txt
# 4,4,EAST
```

## Cleanup

```bash
gem uninstall toyrobot
# Successfully uninstalled toyrobot-0.1.0
```
