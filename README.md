just_type
=========

A simple [Alfred 2][1] workflow to open new iA Writer window ready to just get typing.

It's a hotkey and AppleScript, which opens [iA Writer][2], inserts the text "Just Type," and puts iA into Zen mode, giving you a big, blank space to type into.

## Workflow

The Workflow is only two steps: a hotkey (set to ⇧ ⌘ J), and a call to an applescript.  It's trivial to change the hotkey in the Alfred Workflow settings screens. By modifying the AppleScript, it would also be very simple to change the application, the prompt text, and the zen-mode. 

## AppleScript

The AppleScript was written and tested using Apple's build in "AppleScript Editor," but was copied/pasted into Alfred's window after selecting "run AppleScript" as part of the second workflow step.

The script text follows (and included in the git repo under /AppleScript):

set s to "Just type:" & return & "---" & return

activate application "iA Writer"
tell application "iA Writer"
    make new document
    activate
    delay 0.2
    tell application "System Events" to keystroke s
    tell application "System Events" to keystroke "d" using command down
    tell application "System Events" to keystroke "f" using {command down, control down}
end tell

## Installing

Simply download the [Alfred Workflow File][3], and double click it.

## Requirements

You will need a recent Mac OSX system, Alfred 2, and (most likely), the Alfred 2 PowerPack extension.

## License: GNU GENERAL PUBLIC LICENSE

Copyright (C) 2013 Zach Beauvais

This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    A copy of the GNU General Public License is included in the /License
    repository along with this program.  If not, see 
    <http://www.gnu.org/licenses/>.


[1]: http://www.alfredapp.com/
[2]: http://www.iawriter.com/mac/
[3]: https://github.com/beauvais/just_type/blob/master/just_type.alfredworkflow?raw=true
