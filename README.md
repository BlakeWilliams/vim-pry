# vim-pry

Insert `pry` statements quickly and easily into your buffer based on the
filetype.

tl;dr put `nmap <leader>d :call pry#insert()<cr>` somewhere in your `.vimrc`.

## Usage

In vim make a mapping to call `pry#insert()` and when you're in a file with the
appropriate entry in `g:pry_map` vim-pry will insert the appropriate text.

For example, calling `pry#insert()` in a Ruby file will insert `require 'pry';
binding.pry`, JavaScript will insert `debugger;` etc.

You probably want to define a mapping to this function for ease of use: `nmap
<leader>d :call pry#insert()<cr>`.

## pry_map

This works based on a global dictionary variable called `g:pry_map`. The key is
the filetype and the value is the text to insert.

Lets say you're a JavaScript developer and a stroke of genius hits you and you
decide that `alert('hit!');` is better than `debugger;`. You could replace the
mapping with `let g:pry_map.javascript = "alert('hit');"`.

You can use the same syntax to add entries as well. For more information on
using dictionaries in Vim, check out the chapter in [Learn Vimscript the Hard
Way](http://learnvimscriptthehardway.stevelosh.com/chapters/37.html)

If this plugin is missing an entry please consider making a pull request adding
it.

## Installation

You should probably be using [vim-plug](https://github.com/junegunn/vim-plug).
Add the following to your `~/.vimrc` file, or wherever you keep your bundles.

```vim
Plugin 'BlakeWilliams/vim-pry'
```
