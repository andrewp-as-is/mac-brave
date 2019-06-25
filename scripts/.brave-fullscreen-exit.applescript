#!/usr/bin/osascript

try
  tell application "Brave Browser"
    activate
    delay 0.5 -- delay REQUIRED
    tell application "System Events"
      keystroke "f" using {command down, control down}
    end tell
  end tell
on error errorMessage number errorNumber
  if (errorNumber is equal to -609) --Connection is invalid
    return
  end if
  error errorMessage number errorNumber
end try
