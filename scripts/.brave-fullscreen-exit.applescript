#!/usr/bin/osascript

try
  set _APP_TIMEOUT to 5
  if ("BRAVE_TIMEOUT" is in system attribute) then
    set _APP_TIMEOUT to (system attribute "BRAVE_TIMEOUT") as integer
  end if

  with timeout of _APP_TIMEOUT seconds
    tell application "Brave Browser"
      activate
      delay 0.5 -- delay REQUIRED
      tell application "System Events"
        keystroke "f" using {command down, control down}
      end tell
    end tell
  end timeout
on error errorMessage number errorNumber
  --Connection is invalid. (-609)
  if (errorNumber is in {-609}) then return
  error errorMessage number errorNumber
end try
