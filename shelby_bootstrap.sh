#!/bin/bash -i

# 1) Download Xcode from App Store
#   - it seems this installs command line tools now
# 2) Run This Script!


echo "Hi $USER! Let’s get you setup…"
# TODO: Check for Xcode command line tools
echo 'Prerequisite: You must have XCode 5 installed via App Store (it installs command line tools automatically)' 

# Ask for the administrator password upfront
sudo -v

set -x

# Clone sprout-wrap 
#  sprout-wrap does all the heavy lifting…
#  soloist (via librarian) pulls down cookbooks defined in Cheffile locally
#  then the recipes in soloistrc are used to provision
git clone https://github.com/ShelbyTV/sprout-wrap.git
cd sprout-wrap

# Install soloist dependencies
#  sprout-wrap/Gemfile bootstraps soloist using Bundler
sudo gem install bundler
sudo bundle

# Run soloist
#  in order to run any recipes (that do the provisioning) we need cookbooks…
#  soloist pulls down cookbooks, using Librarian, as defined in Cheffile
#  finally, soloist has chef run the recipes as defined in soloist
sudo bundle exec soloist
