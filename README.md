# Emacs From Scratch configuration
https://www.youtube.com/watch?v=OaF-N-FuGtc&list=PLEoMzSkcN8oNmd98m_6FoaJseUsa6QGm2

I am following along with this config and will crib pieces over to my current Org mode config. See my [dot-emacs-org](https://github.com/mrxcitement/dot-emacs-org) to see my default configuration

## The Basics of Emacs Configuration

No longer show the default startup screen.
Show a visible bell indicator when you press a key that does nothing.
On macOS Emacs, I get a yeild sign icon with an exclamation mark.
Hide the toolbar and scrollbar.
Change cursor to not blink.
Load theme modus-operandi, a good light theme.

Protesilaos Stavrou - Author of Modus theme
https://protesilaos.com/emacs/modus-themes

## The 6 Emacs Settings Every User Should Consider

1. Save recent file list
2. Save mini-buffer interations
3. Save your current place in the file
4. Store customize settings in seperate file
5. Never use graphical dialogs
6. Revert file and non-file buffers that are changed in the background

## Style Your Emacs with the Modus Themes

We are going to be modifying the `modus-theme` so I moved the `load-theme` section of this emacs config to the end of the init.el file.

* Mode line
* Selection regions
* Completion coloring
* Syntax highlighting
* Org Mode files

### The mode line
Remove border
Decrese font size
Add padding
Accent the current active modeline

### Selection region
Background only highlighting

### Completion
I am using the example from the help:
- matches:   extrabold background intense
- selection: semibold accented intense
- popup:     accented

### Syntax highlighting
I am using:
* bold-constructs
* italic-constructs
* paren-match: bold, intense, underline
* syntax: alt-syntax, green-strings, yellow-comments

### Org Mode files
* Headings formatting
I used the default from the help, however I modified it to not grow the size of the text and removed underlines on top of title text

### Source blocks
* Set the tinted mode that provides different colors for source bloacks based on source type.
