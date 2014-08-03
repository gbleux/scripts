# screendetect

A custom script to toggle between two screen setups for a laptop:
* cinema setting (external HDMI output only)
* work setting (laptop screep + external display via DVI)

The screen detection and adaptation is done using _xrandr_.

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy
_screendetect_ into a directory which is part of the PATH lookup chain.

## Usage

Run _screendetect_ and wait for it to complete. Depending on the
connected external displays, the script automatically activates
or deactivates them.