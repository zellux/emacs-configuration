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
#### Configurating HOME environment ==
System Properties -> Environment Variables -> New, add a new environment variable `HOME`, which should contain path to the `.emacs` directory

### Component compilation
#### cedet

    $ emacs -Q -l cedet-build.el -f cedet-build

#### jabber

    $ autoreconf -i
    $ ./configure && make

#### muse
For LaTeX mathematical equations, install packages `tetex-extra` and `dvipng`.

#### pymacs
- Compile Python libraries

    make install

After successful installation, you should be able to execute `from Pymacs import lisp` in an interactive Python shell.

- Compile pymacs elisp source code

    M-x byte-compile-file RET pymacs.el RET

