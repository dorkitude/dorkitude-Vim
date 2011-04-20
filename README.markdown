Pimped Vim
==========



About
-----

**I'm [@dorkitude]**, and this is my vim repo.

**After becoming as fast as possible** with a combination of TextMate and Visor, I decided I needed more speed.  A paradigm shift was in order.  On April 9th, 2011, I switched to vim.

**If you're new to vim**, you should really watch all of Derek Wyatt's quirky/awesome tutorial videos [here.]

  [@dorkitude]: http://twitter.com/dorkitude
  [here.]: http://www.derekwyatt.org/vim/vim-tutorial-videos/vim-novice-tutorial-videos/


Usage
-----

**Window Movement**

I stole Derek Wyatt's window-motion, which lets you do this to move control windows:

 - `,h` move to the window to the left
 - `,j` = move to the window below
 - `,k` = move to the window above
 - `,l` = move to the window to the right

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
