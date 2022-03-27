set pages to 30 -- ①スクリーンショット数
set keychar to (ASCII character 28) -- ②ページめくり方向(28=左,29=右)

tell application "Kindle" to activate
repeat with i from 1 to pages
	tell application "System Events"
		key code 23 using {command down, shift down}
		delay 0.5
		key code 76
	end tell

	tell application "Kindle"
		activate
		delay 0.5
	end tell
	tell application "System Events" to keystroke keychar
end repeat
activate
