#!/usr/bin/osascript

property _TIMEOUT_APP: 10
property _TIMEOUT_TAB: 2

on run argv
  try
    with timeout of _TIMEOUT_APP seconds
      repeat with _arg_url in argv
        tell application "Brave Browser"
          repeat with w in every window
            repeat with t in every tab in w
              set _tab_url to ((URL of t) as text)
              if _arg_url is _tab_url then
                with timeout of _TIMEOUT_TAB seconds
                  tell t to reload
                end timeout
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

