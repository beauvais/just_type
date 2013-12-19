just_type
=========

(**Update:** You can now choose either the classic iA Writer or the new [Writer Pro][4] as your just type environment.)

A simple [Alfred 2][1] workflow to open a clean, zen-mode window ready to just get typing.

The workflow is simply a hotkey and AppleScript, which opens [iA Writer][2] or [Writer Pro][4], inserts the text "Just Type," and puts your editor into Zen mode – giving you a big, blank space to type into.

## Workflow

The Workflow is only two steps: a hotkey (set to ⇧ ⌘ J), and a call to an applescript.  It's trivial to change the hotkey in the Alfred Workflow settings screens. By modifying the AppleScript, it would also be very simple to change the application, the prompt text, and the zen-mode. 

## AppleScript

The AppleScript was written and tested using Apple's build in "AppleScript Editor," but was copied/pasted into Alfred's window after selecting "run AppleScript" as part of the second workflow step.

The script text follows (and included in the git repo under /AppleScript):

**iA Writer:**

```
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
```

**Writer Pro:**

```
set s to "Just type:" & return & "---" & return

activate application "Writer Pro"
tell application "Writer Pro"
        make new document
        activate
        delay 0.2
        tell application "System Events" to keystroke s
        tell application "System Events" to keystroke "d" using command down
        tell application "System Events" to keystroke "f" using {command down, control down}
end tell
```


## Installing

Simply download the Alfred Workflow File for your chosen iA version, and double click it.

* [iA Writer workflow][3]
* [Writer Pro workflow][5]

## Requirements

You will need a recent Mac OSX system (works on Mountain Lion and Mavericks but is untested on any other systems), Alfred 2, and (possibly), the Alfred 2 PowerPack extension.
You will also need either [iA Writer][2] or [Writer Pro][4]. 

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
[3]: https://github.com/beauvais/just_type/blob/master/Alfred_Workflows/just_type.alfredworkflow?raw=true
[4]: http://writer.pro/
[5]: https://github.com/beauvais/just_type/blob/master/Alfred_Workflows/just_type_pro.alfredworkflow?raw=true
