-- While this script is running, it takes a screenshot every 30 seconds of 3 monitors and stores it somewhere.
-- CC0

on run
	
	set duration to 99999 * 60
	set frequency to 30
	set destination to "/Volumes/G-DRIVE/auto-screenshots/"
	
	delay 2
	
	repeat duration times
		
		set currentDate to current date
		
		set fileMon1 to "\"" & destination & "screenshot-" & currentDate & "-mid" & ".png\" "
		set fileMon2 to "\"" & destination & "screenshot-" & currentDate & "-meft" & ".png\" "
		set fileMon3 to "\"" & destination & "screenshot-" & currentDate & "-right" & ".png\" "
		
		set shellCommand to "/usr/sbin/screencapture -x " & fileMon1 & fileMon2 & fileMon3
		do shell script shellCommand
		delay frequency
		
	end repeat
	
	say "Screenshot loop ended!"
	display dialog "Screenshot loop ended! If you see this message, you disk might be quite full! Time to wake-up :)"
	
end run
