## Pre-requisitions

### Mac OS X (Homebrew)

- auctex

### ArchLinux

- pymacs
- auctex
- emacs-haskell-mode
- slime
- emacs-color-theme
- emacs-jabber (available on aur)
- mercurial

### Ubuntu

- emacs-goodies-el
- auctex
- emacs-jabber
- python-mode
- emms
- libtagc0-dev

### Windows

#### HOME environment ==
Open System Properties -> Environment Variables -> New, and add a new
environment variable `HOME`, its value should be the path to the
`.emacs` directory

## Setup

### submodules

    $ git submodule init && git submodule update && git submodule status

### cedet

    $ emacs -Q -l cedet-build.el -f cedet-build

### jabber

    $ autoreconf -i
    $ ./configure && make

### muse

For LaTeX mathematical equations, install packages `tetex-extra` and `dvipng`.

### pymacs
- Compile Python libraries

    make install

After successful installation, you should be able to execute `from Pymacs import lisp` in an interactive Python shell.

- Compile pymacs elisp source code

    M-x byte-compile-file RET pymacs.el RET

## Troubleshooting

### (error "Cannot open doc string file \"/usr/share/emacs/24.1.50/etc/DOC-24.1.50.1\"")

See [this issue](https://github.com/bbatsov/prelude/issues/155) on GitHub. A workaround:

```
$ cd /usr/share/emacs/24.1.50/etc
$ sudo ln -s DOC-24.1.50.2 DOC-24.1.50.1
```
