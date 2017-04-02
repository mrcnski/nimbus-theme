# Nimbus theme for Emacs

The best dark theme for Emacs.

## Screenshots

Python:

![Python](http://i.imgur.com/2Ij1ROs.png)

More screenshots:

- [Elisp](http://i.imgur.com/iSXPuqB.png)
- [Nim](https://i.imgur.com/nPLOtwL.png)
- [Rust 1](https://i.imgur.com/aC2ITgM.png)
- [Rust 2](https://i.imgur.com/2oYvqKk.png)

## Usage

### MELPA

The easiest way to install Nimbus. Make sure you have set up [MELPA](http://melpa.milkbox.net/#/getting-started) and run:

```
M-x package-install RET nimbus-theme RET
```

Use `M-x customize-themes` to activate it, or put the following in your Emacs configuration file:

```elisp
(load-theme 'nimbus t)
```

### Manual

Download `nimbus-theme.el` to the directory `~/.emacs.d/themes/`. Add this to your `.emacs`:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
```

Now you can use `customize-themes` or `load-theme` to activate Nimbus, as described in the MELPA section above.

## Contributing

I highly urge each and every one of you to contribute. This isn't my full-time job so I can't support every Emacs package out there (although this theme supports more than the average theme). Write issues and make pull requests liberally.
