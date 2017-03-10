# nimbus-theme
The best dark theme for Emacs

## About
Why another Emacs theme? The short answer is that practically all existing themes suck. Take a look at Zenburn, the most popular Emacs theme. Aesthetically, it's ugly as sin. It's almost all gray, so using it is like staring at cement. And functionally, there is virtually no contrast between anything, making it straining on the eyes and difficult to use, even if the user is not aware of this fact. Nimbus is both visually pleasing (I would even say beautiful) and each element is distinctive and stands out to the eye.

Some alternatives to Zenburn I had tried were better, but nothing came close to meeting my standards. This is the last theme I will ever need to use. And if you're like how I was, constantly dissatisfied with your latest theme, then rest assured your search is over.

I should mention that I have only ever evaluated dark themes. Light themes are a travesty against humankind.

## Demos

[Python](http://imgur.com/2Ij1ROs)

[Elisp](http://imgur.com/iSXPuqB)

## Usage

### Manual

Download nimbus-theme.el to the directory ~/.emacs.d/themes/. Add this to your .emacs:

```elisp         
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
```             

Now you can load the theme with the interactive function load-theme like this:

```
M-x load-theme RET nimbus
```

### Package.el

Coming soon

## Contributing

I highly urge each and every one of you to contribute. This isn't my full-time job so I can't support every Emacs package out there (although this theme supports more than the average theme). Write issues and make pull requests liberally.
