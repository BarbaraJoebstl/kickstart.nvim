# Nvim

## window

ctrl + w: opens window options

## vim
h, j, k, l: left, down, up, right
x: delete the char where the cursor is
i: insert text
A: append at the end of the line
a: append after cursor
e: jump to end of a word
:q! + enter: quit the editor:wq write a file and quit
y: copy
yw: copy one word
p: paste
2w: move cursor two words forward
3e: move to the end of third word forward
u: undo last command
U: undo to original state
<C-r>: redo a command
G: bottom of a file
gg: move to start of a file
{lineNumber}G: go to {linenumber}
<C-g>: go back, after going to a line number
r: insert char you want to have
p: put back a text that just has been deleted
:r FILENAME: get a file content and put it to below the current cursor position
:r !dir: reads the output of the dir and puts it below the cursor position
o: opne a line below the cursor
O: open a line above the cursor


### search
:/{searchphrase}
n: search for same phrase again
N: search for same phrase in opposite direction
<C-o>: go back where you came from
<C-i>: go forward, or go to function defintion, if cursor is on function

### subsitute
:s/{old}/{new}: substitue new for the first {old} in a line
:s/{old}/{new}/g: substitute all in a file
:s/{old}/{new}/gc: substitue all occurences in a file, asking for confirmation for every replacement


### change operator
ce: change from cursor to end of the word
c$: change from cursor until end of the line


### deletion commands

dw: delete a word, excluding first character
d$: delete until the end of the line
de: delete current word, including last char
dd: delete line
2dd: delete 2 lines



