vim-keys
========

The leader key is mapped to `[Space]`

`[ö]` produces a `:` (easier commands with german keyboard layout)

`[F9]` Opens the `.vimrc` in a new window

`[F10]` Reads-in the `.vimrc` again

In insert mode you can paste the content of the system clipboard using `[Shift]+[Insert]`

`[Ctrl]+[Tab]` (`[Ctrl]+[Shift]+[Tab]`) switches to the next (previous) buffer

`[Alt]+[k]` and `[Alt]+[Up]` (`[Alt]+[j]` and `[Alt]+[Down]`) bubble lines up (down); `[Alt]+[Right]` (`[Alt]+[Left]`) moves the lines right (left

`[Shift]+[<Arrow>]` does nothing but moving the cursor

The command `SUDOwrite` forces saving files that require root permission

The window commands are remapped:
- `[<leader>][w][s]` Creates a new horizontal split
- `[<leader>][w][v]` Creates a new vertical split
- `[<leader>][w][c]` Closes the current window
- `[<leader>][w][n]` Opens a new window and starts editing an empty file
- `[<leader>][w][o]` Closes all but the current window
- `[<leader>][w][+]` Maximizes the current window
- `[<leader>][w][-]` Minimizes the current window
- `[+]` (`[-]`) increases (decreases) the width of the current window by 20 columns
- `[Ctrl]+[Up|k]` Moves the focus to the window on top
- `[Ctrl]+[Down|j]` Moves the focus to the window below
- `[Ctrl]+[Left|h]` Moves the focus to the window on the left
- `[Ctrl]+[Right|l]` Moves the focus to the window on the right

Tags
- `[F3]` Opens the tag definition for the word under cursor in the current window
- `[F4]` Opens the tag definition for the word under cursor in a new horizontal split

Plug-Ins (NERDTree, Tagbar $ Co.)
- `[<leader>][n]` Toggles NERDTree
- `[<leader>][t]` Toggles Tagbar
- `[<leader>][f]` Searches the word under the cursor with Ack.vim
- `[Ctrl]+[f]` Triggers CtrlP for files on the filesystem
- `[Ctrl]+[t]` Triggers CtrlP for tags in the tagfile
- `[Ctrl]+[b]` Triggers CtrlP for open buffers
