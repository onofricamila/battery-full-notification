# Battery Full Notification
A simple script to display a notification when your battery is almost full and when it needs to be charged according to some experts recommendation to mantain its level in the range of ~30/80%. It works in Ubuntu.

![preview](http://i.imgur.com/rVGMBK8.png)

## Installation :

1. Install `acpi` package :

        sudo apt-get install acpi

2. Clone this repo :
        
        git clone https://github.com/onofricamila/battery-full-notification.git
        
3. Add the `batteryfull.sh` script as a startup application (Open Dash and search for `Startup Applications`) and complete fields as follows:

    * Name: Plug/unplug laptop charger notification
    * Command: full path to batteryfull.sh
    * Simple script to make it easy to keep your laptop battery between 30% n 80%

4. Done!


----

<sup>Battery icon credit to [DreamStale](http://www.dreamstale.com/free-download-40-battery-vector-icons/).</sup>


    
