<!--
https://readme42.com
-->



[![](https://img.shields.io/badge/OS-macOS-blue.svg?longCache=True)]()
[![](https://img.shields.io/pypi/v/mac-brave.svg?maxAge=3600)](https://pypi.org/project/mac-brave/)
[![](https://img.shields.io/npm/v/mac-brave.svg?maxAge=3600)](https://www.npmjs.com/package/mac-brave)[![](https://img.shields.io/badge/License-Unlicense-blue.svg?longCache=True)](https://unlicense.org/)
[![](https://github.com/andrewp-as-is/mac-brave/workflows/tests42/badge.svg)](https://github.com/andrewp-as-is/mac-brave/actions)

### Installation
```bash
$ [sudo] pip install mac-brave
```

```bash
$ [sudo] npm i -g mac-brave
```

#### Config
```bash
$ export BRAVE_TIMEOUT=10 # 5 by default
```

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

`Brave Browser.app` process
```bash
$ brave pid
42
$ brave isready 5 # timeout 5 seconds
1
$ brave kill
```

<p align="center">
    <a href="https://readme42.com/">readme42.com</a>
</p>
