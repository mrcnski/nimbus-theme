# nimbus-theme
The best dark theme for Emacs

## About
Why another Emacs theme? The short answer is that practically all existing themes suck. Take a look at Zenburn, the most popular Emacs theme. It's almost all gray, so using it is like staring at cement. And functionally, there is virtually no contrast between anything, making it straining on the eyes and difficult to use. Nimbus is both visually pleasing (I would even say beautiful) and each element is distinctive and stands out to the eye.

Some other themes I had tried were better, but none came close to meeting my standards. Several of them, though otherwise decent, made odd stylistic changes like italicizing comments or enlarging org-mode headers, adding noise and inconsistency to the visual field. Nimbus refrains from making such blunders.

It is strange that there is such a paucity of useable Emacs themes, even in this day and age. Nimbus aims to be the exception. This is the last theme I will ever need to use. And if you're like how I was, constantly dissatisfied with your latest theme, then rest assured your search is over.

I should mention that I have only compared Nimbus to other dark themes. Light themes are a travesty against humankind.

## Demos

[Python](http://imgur.com/2Ij1ROs)

[Elisp](http://imgur.com/iSXPuqB)

[Nim](https://i.imgur.com/nPLOtwL.png)

[Rust 1](https://i.imgur.com/aC2ITgM.png), [Rust 2](https://i.imgur.com/2oYvqKk.png)

## Usage

### MELPA

The easiest way to install Nimbus. Make sure you have set up [MELPA](http://melpa.milkbox.net/#/getting-started) and run:

```
M-x package-install RET nimbus-theme RET
```

Use `M-x customize-themes` to activate it, or put the following in your Emacs configuration file:

```
(load-theme 'nimbus t)
```

### Manual

Download nimbus-theme.el to the directory ~/.emacs.d/themes/. Add this to your .emacs:

```elisp         
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
```             

Now you can use `customize-themes` or `load-theme` to activate Nimbus, as described in the MELPA section above.

## Contributing

I highly urge each and every one of you to contribute. This isn't my full-time job so I can't support every Emacs package out there (although this theme supports more than the average theme). Write issues and make pull requests liberally.
