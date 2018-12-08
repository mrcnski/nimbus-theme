# Nimbus

[![MELPA](https://melpa.org/packages/nimbus-theme-badge.svg)](https://melpa.org/#/nimbus-theme)

The best dark theme for Emacs.

## Screenshot

![Screenshot](screenshot.png)

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

If you encounter any issues with Nimbus (such as faces being hard to read or not appearing as expected), please try the following:

1. Restart Emacs and make sure Nimbus is the first theme you enable. Switching custom themes midway through an Emacs session may cause artifacts from the previous theme to remain.
2. Leave a bug report for the repository on GitHub (https://github.com/m-cat/nimbus-theme/issues).

## Contributing

All contributions are welcome. I want to support all third-party Emacs packages, and Nimbus supports a lot of them, but it's impossible for me to do this alone. Write issues and make pull requests liberally.
