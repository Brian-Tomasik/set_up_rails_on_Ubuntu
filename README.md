# Setting up Rails on Ubuntu

This project describes how I set up Ruby on Rails on an Ubuntu VM on my Windows laptop. It includes a script that does most of the installation.

## Motivation

Initially I tried to install Rails on my Windows laptop directly. However, I ran into a problem with a Turbolinks Gem, and I [wasn't](http://stackoverflow.com/questions/28312460/object-doesnt-support-this-property-or-method-rails-windows-64bit/) able to find a good solution. In general, I heard that Rails had more hiccups on Windows, so I thought it might make sense to use Linux instead.

I ran Ubunt using VirtualBox on my Windows laptop. Initially I set it up using [Vagrant](https://www.vagrantup.com/), which creates a quick Linux VM that you can access in the command line. But I realized I wanted the GUI functionality of Ubuntu in order to more easily view the Rails web app in the browser and perform various other functions, so I instead decided to use just VirtualBox on its own.

## Steps

1. Install [VirtualBox](https://www.virtualbox.org/).
2. [Download Ubuntu](http://www.ubuntu.com/download/desktop) as an .iso file.
3. Create a VirtualBox VM using that .iso file. There are various tutorials, like [this one](http://www.psychocats.net/ubuntu/virtualbox), about how to set up a VirtualBox VM. During the setup process, Ubuntu asks you if you want to "Erase disk". Since Ubuntu is in a VM, [you can](http://ubuntuforums.org/archive/index.php/t-2142889.html) say "yes" to this without worrying about affecting your Windows disk.
4. Once Ubuntu is ready and has restarted, press Ctrl+Alt+t to open a terminal window. Type

        sudo apt-get -y update && sudo apt-get -y install git && git clone https://github.com/Brian-Tomasik/set_up_rails_on_Ubuntu.git && chmod 755 setup.sh && ./setup.sh

Much of this `setup.sh` script is based on [this walkthrough](https://gorails.com/setup/ubuntu/15.04).