Pimped Vim
==========



About
-----

**I'm [@dorkitude]**, and this is my vim repo.

**After becoming as fast as possible** with a combination of TextMate and Visor, I decided I needed more speed.  A paradigm shift was in order.  On April 9th, 2011, I switched to vim.

**This repository is here to help** people make a similar transition.  There will be trial and error with key bindings, and with adding/removing extensions, but HEAD on master will serve as the current best practice (as defined by my own daily usage).  That branch's commit history, meanwhile, will serve as the living documentation of my journey into vim.

UPDATE:  On April 30th, 20011, I realized I had now become faster for most tasks than I ever was with TextMate/visor. And it's accelerating!


Getting Started
---------------

**If you're new to vim**, you should really watch all of Derek Wyatt's quirky/awesome tutorial videos [here.]

**If you use git** (and presumably you do, since this is a github README file), the vim plugin Fugitive (included in this repo as a submodule) is a must-have! Watch [these]&nbsp;[vimcasts] to see why.

  [@dorkitude]: http://twitter.com/dorkitude
  [here.]: http://www.derekwyatt.org/vim/vim-tutorial-videos/vim-novice-tutorial-videos/
  [these]: http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
  [vimcasts]: http://vimcasts.org/episodes/fugitive-vim-working-with-the-git-index/


**Installation**

 1. checkout the repo (the `--recursive` will force it to also checkout the submodules):

           git clone --recursive git://github.com/dorkitude/Pimped-Vim.git

 2. go to your home directory:

           cd ~

 3. create symlink called `.vimrc` and point it to `Pimped-Vim/.vimrc`:
 
           ln -s /path/to/Pimped-Vim/.vimrc .vimrc

 4. create symlink called `.vim` and point it to the folder `Pimped-Vim/.vim/`:

           ln -s /path/to/Pimped-Vim/.vim/ .vim


Usage
-----



**Window Movement**

I stole Derek Wyatt's window-motion bindings, which lets you do this to move control windows:

 - `,h` move control to the window to the left
 - `,j` = move control to the window below
 - `,k` = move control to the window above
 - `,l` = move control to the window to the right

(Normally, these would be `^w h`  `^w j`  etc)


**The NERDtree project drawer**

I have this mapped to F2.  On my Mac, that means I press `fn + F2`, since F2 alone will actually change my brightness.




**Command-T**

You can activate Command-T with `\t` 


The following mappings are active when the prompt has focus:

    <BS>        delete the character to the left of the cursor
    <Del>       delete the character at the cursor
    <Left>      move the cursor one character to the left
    <C-h>       move the cursor one character to the left
    <Right>     move the cursor one character to the right
    <C-l>       move the cursor one character to the right
    <C-a>       move the cursor to the start (left)
    <C-e>       move the cursor to the end (right)
    <C-u>       clear the contents of the prompt
    <Tab>       change focus to the file listing

The following mappings are active when the file listing has focus:

    <Tab>       change focus to the prompt

The following mappings are active when either the prompt or the file listing
has focus:

    <CR>        open the selected file
    <C-CR>      open the selected file in a new split window
    <C-s>       open the selected file in a new split window
    <C-v>       open the selected file in a new vertical split window
    <C-t>       open the selected file in a new tab
    <C-j>       select next file in the file listing
    <C-n>       select next file in the file listing
    <Down>      select next file in the file listing
    <C-k>       select previous file in the file listing
    <C-p>       select previous file in the file listing
    <Up>        select previous file in the file listing
    <C-c>       cancel (dismisses file listing)

The following is also available on terminals which support it:

    <Esc>       cancel (dismisses file listing)
    










----
====
----
====






Red Tape
========

Here's some crap I have to put in here to keep people from suing me.


Pimped-Vim License
------------------
Pimped-Vim is released under the `wtfpl`.

See http://sam.zoy.org/wtfpl

Basically: Do whatever you want with my stuff, just don't sue me.  I make no warrantees about its use, blah blah blah, just live free and go create stuff!



Command-T License
-----------------

You can find the Command-T License in the source for that extension.  I believe it's in `.vim/bundle/command-t`
