# Nimbus

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

## Contributing

All contributions are welcome. It's impossible for me alone to support every Emacs package out there (although this theme supports more than the average theme). Write issues and make pull requests liberally.
