on alfred_script(q)
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
end alfred_script