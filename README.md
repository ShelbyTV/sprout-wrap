# sprout-wrap

This project uses [soloist](https://github.com/mkocher/soloist) and [librarian-chef](https://github.com/applicationsonline/librarian-chef)
to run a subset of the recipes in sprout's [cookbooks]((https://github.com/pivotal-sprout/sprout).

[Fork it](https://github.com/pivotal-sprout/sprout-wrap/fork) to 
customize its [attributes](http://docs.opscode.com/chef_overview_attributes.html) in [soloistrc](/soloistrc) and the list of recipes 
you'd like to use for your team. You may also want to add other cookbooks to its [Cheffile](/Cheffile), perhaps one 
of the many [community cookbooks](http://community.opscode.com/cookbooks). By default it configures an OS X 
Mavericks workstation for Ruby development.

## Installation

### 1. Install XCode

[![Xcode - Apple](http://r.mzstatic.com/images/web/linkmaker/badge_macappstore-lrg.gif)](https://itunes.apple.com/us/app/xcode/id497799835?mt=12&uo=4)

**1B. Run Xcode** 

As of Xcode 5, command line tools are installed on first run.  Hurray!

### 2. Do all of the things
  
  `bash <( curl https://raw.github.com/ShelbyTV/sprout-wrap/master/shelby_bootstrap.sh )`
  
  Script will clone this project, install the requirements, and run soloist to provision your machine.

## Nice To Have / TODO

As I use my newly provisioned machine, I'm tracking everything that should have been provisioned but I'm forced to manually tweak.

* Terminal tweaks
  * visual bell, no audio bell
    * com.apple.terminal "Window Settings" -> "Pro" -> Bell = 0;
  * Terminal should exit when last process exist cleanly
    * com.apple.terminal "Window Settings" -> "Pro" -> shellExitAction = 1;
* hide volume from menu bar
* hide time machine from menu bar
* hide bluetooth from menu bar
* trackpad tap to click
* trackpad app expose
* Safari new window/tab is blank page
  * com.app.safari NewTabBehavior = 1;
  * com.apple.safari NewWindowBehavior = 1;
* disable "automatically rearrange Spaces based on use"
* disable "when switiching to an app, switch to a Space with open windows"
* require PW 5 seconds after screen saver

TODO: How can this be used to easily refresh a computer on a regular basis (quarterly)?
Remaining big issue: my files in my home directory.  Seperate partition?  Dropbox?
