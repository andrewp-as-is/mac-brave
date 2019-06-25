<!--
https://pypi.org/project/readme-generator/
https://pypi.org/project/python-readme-generator/
-->

[![](https://img.shields.io/badge/OS-macOS-blue.svg?longCache=True)]()
[![](https://img.shields.io/badge/language-AppleScript-blue.svg?longCache=True)]()
[![](https://img.shields.io/pypi/v/mac-brave.svg?maxAge=3600)](https://pypi.org/project/mac-brave/)
[![Travis](https://api.travis-ci.org/looking-for-a-job/mac-brave.svg?branch=master)](https://travis-ci.org/looking-for-a-job/mac-brave/)

#### Installation
```bash
$ [sudo] pip install mac-brave
```

#### Scripts usage
command|`usage`
-|-
`brave` |`usage: brave command [args]`
[`brave-close`](# "close tab by url") |`usage: brave-close url ...`
[`brave-frontmost`](# "print 1 if 'Brave Browser.app' is frontmost, else 0") |`usage: brave-frontmost`
[`brave-fullscreen-detect`](# "print 1 if 'Brave Browser.app' is in fullscreen mode, else 0") |`usage: brave-fullscreen-detect`
[`brave-fullscreen-enter`](# "enter fullscreen mode") |`usage: brave-fullscreen-enter`
[`brave-fullscreen-exit`](# "exit fullscreen mode") |`usage: brave-fullscreen-exit`
[`brave-kill`](# "list tabs with playing audio") |`usage: brave-kill`
[`brave-noisy-tabs`](# "print") |`usage: brave-noisy-tabs`
[`brave-open`](# "open url(s)") |`usage: brave-open url ...`
[`brave-pid`](# "print 'Brave Browser.app' pid") |`usage: brave-pid`
[`brave-refresh`](# "refresh url(s)") |`usage: brave-refresh url ...`
[`brave-url`](# "print active url") |`usage: brave-url`
[`brave-urls`](# "print urls") |`usage: brave-urls`

#### Examples
url(s)
```bash
$ brave urls
https://github.com/
https://google.com/
$ brave url
https://github.com/
```

open/refresh
```bash
$ brave open "https://github.com/" "https://google.com/"
$ brave refresh "https://github.com/"
```

fullscreen
```bash
$ brave fullscreen-enter
$ brave fullscreen-detect
1
$ brave fullscreen-exit
```

frontmost (`1` or `0`)
```bash
$ brave frontmost
0
```

<p align="center">
    <a href="https://pypi.org/project/python-readme-generator/">python-readme-generator</a>
</p>