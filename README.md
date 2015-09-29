# Setting up Rails on Ubuntu

This project describes how I set up Ruby on Rails on an Ubuntu VM on my Windows laptop. It includes a script that does most of the installation. It assumes you want postgresql as the database. The whole process takes ~1 hour for your computer to run (and possibly longer for you to figure out the steps).

## Motivation

Initially I tried to install Rails on my Windows laptop directly. However, I ran into a problem with a Turbolinks Gem, and I [wasn't](http://stackoverflow.com/questions/28312460/object-doesnt-support-this-property-or-method-rails-windows-64bit/) able to find a good solution. In general, I heard that Rails had more hiccups on Windows, so I thought it might make sense to use Linux instead.

I ran Ubuntu using VirtualBox on my Windows laptop. Initially I set it up using [Vagrant](https://www.vagrantup.com/), which creates a quick Linux VM that you can access in the command line. But I realized I wanted the GUI functionality of Ubuntu in order to more easily view the Rails web app in the browser and perform various other functions, so I instead decided to use just VirtualBox on its own.

## Steps

1. Install [VirtualBox](https://www.virtualbox.org/).
2. [Download Ubuntu](http://www.ubuntu.com/download/desktop) as an .iso file.
3. Create a VirtualBox VM using that .iso file. There are various tutorials, like [this one](http://www.psychocats.net/ubuntu/virtualbox), about how to set up a VirtualBox VM. During the setup process, Ubuntu asks you if you want to "Erase disk". Since Ubuntu is in a VM, [you can](http://ubuntuforums.org/archive/index.php/t-2142889.html) say "yes" to this without worrying about affecting your Windows disk. Ubuntu will do various installation and need a restart. If the VM seems to get stuck on the restart (waiting for several minutes without proceeding), I found that pressing Alt+Tab seems to get it going, though I don't know why. :)
4. Enable "Guest Additions" by following [this video](https://www.youtube.com/watch?v=Q84boOmiPW8). Doing this will allow you to maximize the VM screen. To also enable copy-paste between the host (Windows) and the VM (Ubuntu), follow [these instructions](http://www.liberiangeek.net/2013/09/copy-paste-virtualbox-host-guest-machines/). In addition to adjusting Settings to enable copy-paste, you also need to click Devices -> Shared Clipboard -> Bidirectional within the Ubuntu machine. Finally, note that to copy-paste in a terminal window, you can't just use Ctrl+c and Ctrl+v but need to right-click on the terminal and choose either "Copy" or "Paste".
5. Press Ctrl+Alt+t to open a terminal window and copy-paste this:

        sudo apt-get -y update && sudo apt-get -y install git && git clone https://github.com/Brian-Tomasik/set_up_rails_on_Ubuntu.git && cd set_up_rails_on_Ubuntu && chmod 755 setup_part_1.sh && ./setup_part_1.sh && source ~/.bashrc && chmod 755 setup_part_2.sh && ./setup_part_2.sh

	Much of this `setup.sh` script is based on [this walkthrough](https://gorails.com/setup/ubuntu/15.04).

6. [optional] Install your favorite text editor. The setup_part_2.sh script installs gmate for you.

7. [optional] Change the time until you get logged out of the Ubuntu computer [as follows](http://ubuntuforums.org/showthread.php?t=1601092&p=9998451#post9998451):

	    sudo gmate /etc/xdg/autostart/gnome-screensaver.desktop

    and edit the line that looks like

	    X-GNOME-Autostart-Delay=20

    to have a higher delay number.

8. If you're creating a new Rails project, follow the guide [here](http://guides.rubyonrails.org/getting_started.html). If you're cloning an existing project, follow [this answer](http://stackoverflow.com/questions/1742169/how-to-import-existing-ror-project).