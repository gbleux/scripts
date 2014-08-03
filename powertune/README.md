# powertune

A variety of system tweaks with the goal of optimizing/reducing the
power consumption. The settings will most likely not work on every
system. Using it may decrease the system performance or even break
it entirely; proceed with caution and use it at your own risk.

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy 
_powertune_ into a directory which is part of the PATH lookup chain.

## Usage

Run _powertune_ and wait for it to complete. You will most likely never
need to run this script again unless the system is changed.

## Files

The script modifies a variety of files under the linux virtual filesystem.
Read the script to get an insight on which files are actually affected.