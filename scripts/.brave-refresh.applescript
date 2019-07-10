#!/usr/bin/osascript

on run argv
  set _APP_TIMEOUT to 5
  if ("BRAVE_TIMEOUT" is in system attribute) then
    set _APP_TIMEOUT to (system attribute "BRAVE_TIMEOUT") as integer
  end if

  try
    with timeout of _APP_TIMEOUT seconds
      repeat with _arg_url in argv
        tell application "Brave Browser"
          repeat with w in every window
            repeat with t in every tab in w
              set _tab_url to ((URL of t) as text)
              if _arg_url is _tab_url then
                tell t to reload
              end if
            end repeat
          end repeat
        end tell
      end repeat
    end timeout
  on error errorMessage number errorNumber
    --Connection is invalid. (-609)
    if (errorNumber is in {-609}) then return
    error errorMessage number errorNumber
  end try
end run

