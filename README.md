# Nimbus

[![MELPA](https://melpa.org/packages/nimbus-theme-badge.svg)](https://melpa.org/#/nimbus-theme)
[![Issues](https://img.shields.io/github/issues-raw/m-cat/nimbus-theme.svg)](https://github.com/m-cat/nimbus-theme/issues)
[![License: GPL3](https://img.shields.io/badge/License-GPL3-yellow.svg)](https://opensource.org/licenses/GPL-3.0)

The best dark theme for Emacs.

## Screenshots

Screenshot showing `display-line-numbers-mode`, `bm`, `diff-hl`, and `spaceline`:

![Screenshot](screenshot.png)

### More

- [Screenshot](screenshot-DogLooksGood.png) by [DogLooksGood](https://github.com/DogLooksGood).
- [Old screenshot](screenshot-old.png)

## About

Nimbus is a dark theme that I developed for my personal use. It's the only theme I ever use. I regularly add and modify faces and am always looking to support more third-party packages.

Nimbus was originally a fork of [Ample](https://github.com/jordonbiondo/ample-theme).

## Installing

Make sure you have set up [MELPA](http://melpa.milkbox.net/#/getting-started) and run:

```
M-x package-install RET nimbus-theme RET
```

Use `M-x customize-themes` to activate it, or put the following in your Emacs configuration file:

```elisp
(load-theme 'nimbus t)
```

Or, if you have [use-package](https://github.com/jwiegley/use-package):

```elisp
(use-package nimbus-theme)
```

## Troubleshooting

If you encounter any issues with Nimbus (such as text faces being hard to read or not appearing as expected), please try the following:

1. Restart Emacs and make sure Nimbus is the first theme you enable. Switching custom themes during an Emacs session may cause artifacts from the previous theme to remain.
1. Leave a bug report on [GitHub](https://github.com/m-cat/nimbus-theme/issues). Please try to include screenshots as well as full instructions for reproducing your problem, including setup of the relevant mode.

## Contributors

- Marcin Swieczkowski [[GitHub](https://github.com/m-cat)] -- The head honcho
- Jordon Biondo [[GitHub](https://github.com/jordonbiondo)] -- Creator of [Ample Theme](https://github.com/jordonbiondo/ample-theme)
- Davor Rotim [[GitHub](https://github.com/drot)]
- Pierre Le Gall [[GitHub](https://github.com/lepieru)]
- Bruno [[GitHub](https://github.com/arzoriac)]
- Jorge Araya Navarro [[GitHub](https://github.com/shackra)]

## Contributing

All contributions are welcome. I want to support as many third-party Emacs packages as possible. Please write issues and raise pull requests!
