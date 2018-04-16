# Starter Kit App

## Overview
This repository contains code to run a ruby on rails web application for a starter kit.  The starter kit consists of a buzzer, a 4-digit display, a light sensor, a potentiometer, and an ultrasonic range sensor connected to a TI C32200sf board.


## Pre-Reqs

In order to use this code, the user will need to have rails installed and bundler installed. For more information on installing rails and bundler see …(add reference ) 

To see the live updating web app functionality implemented in the `live_update` branch or the `live_change_display` branch, the user must also have a redis server installed.  If you are on a mac, you can do this by running 'brew install redis'.


## Set up

The five sensors should be plugged into the designated ports on the Grove Base Boosterpack, and a usb cable should be plugged into the usb port at the top of the board and a usb port on your computer.  

For more information about setting up the sensors, see <https://portal.apiotics.com/workers/106>

## Branches

There are four branches in this repository.

* The `master` branch contains code for a rails application for the starter kit.
* The `change_display` branch builds off the master branch and contains additional logic to display the position of the potentiometer on the 4-digit display.
* The `live_update` branch also builds off the master branch but contains additional logic to automatically update the data from the sensors on the web app. 
* The `live_change_display` branch contains the additional logic from the change_display branch AND the live_update branch, to both update the display with the potentiometer position AND automatically update the web app with data from the sensors.

Note: The `live_update` branch and `live_change_display` branch require a redis server to be installed by the user in order to see live updates on the web app.

## Implementation

1. Decide which branch in the repository has the functionality you want, and clone it onto your local machine.

2. If you are using Linux, uncomment the following line in the Gemfile:
`# gem 'mini_racer', platforms: :ruby`

3. Run `rake db:migrate`

4. For the `change_display` or `live_change_display` branches, navigate to `app/models/starter_kits/potentiometer.rb` and insert the name of your device where it says `#insert device name here in quotes`.  The name of your device can be found at <https://portal.apiotics.com/workers/106> under the Worker Instances section.

5. To start communication with the web app, run `rake dev_comms:start`

6. If you are using the `live_update` or `live_change_display` branch, start a redis server by opening a new terminal and running `redis-server`.  Leave this terminal open in the background.  

7. Run `rails server` (or `rails s`)

8. To see the web app, browse to <http://localhost:3000/starter_kits>.

Note: 
Every time you change the code you will need to run `dev_comms:restart` (or `dev_comms:stop` then `dev_comms:start`) in order to see the updates on the web app. 


## More Info
<https://portal.apiotics.com/workers/106>



