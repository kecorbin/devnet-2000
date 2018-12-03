# AppleScript for Demo Window layout
# execute with `osascript window_layout.scpt`

tell application "iTerm"
	activate
	tell current window
		create tab with default profile
	end tell
	set pane_1 to (current session of current window)

	tell pane_1
		set pane_3 to (split horizontally with same profile)
	end tell

	tell pane_1
		set pane_2 to (split vertically with same profile)
	end tell

	tell pane_1
		write text "workon devnet-2000; cat Makefile"
		set name to "DEVNET-2000 Demo"
	end tell

	tell pane_2
		write text "workon devnet-2000; git log"
		set name to "DEVNET-2000 Demo"
	end tell

	tell pane_3
		write text "workon devnet-2000; make subscribe"
		set name to "Subscribe to Tenant Objects"
	end tell
end tell
