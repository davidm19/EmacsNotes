# EMACS NOTES!

## Full disclosure: I prefer vim keybindings because I don't do carpal tunnel

### emacs command are generally typed with these two keys: ctrl, "meta" (alt, esc)

      C-<chr>
      M-<chr>

### MOVEMENT
```
	C-p	     Go up one line
	C-n	     Go down one line
	C-f	     Go forward one space
	C-b	     Go backward one space

        M-f	     Go forward one word
	M-b	     Go backward one word

	C-a	     Move to the beginning of the line
	C-e	     Move to the end of the line

	M-<	     Move to the beginning of the file
	M->	     Move to the ending of the file

	C-v	     Move forward one screenful
	M-v	     Move backward one screenful
	C-l	     Center the screen around the cursor
```
YOU CAN COMBINE MOVEMENT COMMANDS WITH ```C-u``` TO MOVE ANY NUMBER OF SPACES
    for example: ```C-u 8 C-f``` moves forward 8 characters

### WINDOWS
```
	C-x 1	Delete all other windows in the current frame and keep the window where the cursor is
	C-x 2	Splits the current buffer into two horizontal windows
	C-x 3	Splits the current buffer into two vertical windows
	C-x o	Switch between windows
```
### INSERTING AND DELETING:
	  This is different from vim in that you don't need to be in a certain "mode" to insert text, and commands need the ctrl or meta keys in order to work. However,depending on what you're doing, emacs will provide additional whitespace. For example, if you're writing methods, emacs will provide an indent for you to write in your code.
	  You can also combine characters with ```C-u```. For example, ```C-u 8 *``` writes ********.
```
	<DEL>        Delete the character just before the cursor
	C-d   	     Delete the next character after the cursor

	M-<DEL>      Kill the word immediately before the cursor
	M-d	     Kill the next word after the cursor

	C-k	     Kill from the cursor position to end of line
	M-k	     Kill to the end of the current sentence

	C-<SPC>	     Select a piece of text (<SPC> = Space Bar)
	M-w	     Copy text
	C-w	     Kill text in highlighted space (killed text can be reinserted at any position)
	C-y	     Paste killed text
	M-y	     Reinserts previous killed texts
	M-;	     Adds a comment to the end of the line
	             OR
		     Comments out a highlighted block of text
```
### MAKING MISTAKES
```
	C-/ C-_ C-x u	     Undo a command
```
### FILE MANAGEMENT
```
	C-x C-f	     Find/Create a file ("buffer")
	C-x C-s	     Save the buffer
	C-x s	     Save all open buffers
	C-x c-w	     "Save as"
	C-x C-b	     List buffers
	M-x kill-matching-buffers	
		     Kill buffers with any matching expression in their names (e.g. M-x kill-matching-buffers * kills any buffers starting with *)
	C-x k	     Kill a single buffer
        C-g	     Stop a command
        C-x C-c	     Quit an emacs session
	C-s (word)   Start a search for (word). Typing C-s again cycles through further instances of (word). The DEL key moves the cursor back. Return terminates the search.
	d	     Flag a file for deletion (must be in directory viewing)
	x	     Deletes files
	M-!	     Execute a shell command
	C-x 2 --> M-x "term"
		     Open a terminal in a window below the workspace. Use this to compile and run code from the terminal
```
### COMMAND EXTENSIONS
```
	C-x	     Character eXtend. Usually followed by one character.
	M-x	     Named command eXtend. Usually followed by some sort of name.
```
### SEARCHING
```
	C-s	     Search
	C-r	     Search backwards
```

### MACROS
```
	C-x ( OR <F3>
		     Start macro
	C-x ) OR <F4>
		     End macro
	C-x e        Execute macro
	
	C-x z	     Repeat a command (press z subsequent times to repeat the command further)
```

### GIT FUNCTIONALITY
```
	C-x v v      Git add + git commit (for the current file; use C-c C-c to finish)
	C-x v P	     Git push
	C-x v +      Git pull
	C-x v d	     Git status
	C-x v D      Find differences within a file
	C-x v r (branchname)      
		     Checkout to branchname
	C-x v i      Add new file to repository
	C-x v I      Display the incoming changes in a git pull
	C-x v O      Display the outgoing changes in a git push
	C-x v ~      Go to file with most recent changes
	C-x v u      Undo checkout (go back to lastest commit)
	C-x v l      Git log
	M-x smerge-mode
		     Bring up tool to help resolve conflicts
		     (NOTE: During a merge conflict, resolve all the merges but DO NOT COMMIT from git-vc; instead, do (M-! --> git commit -am "(commit message)")
```
### INSTALLING PACKAGES
```
	M-x list-packages
		     Bring up MELPA package-list
	i	     Mark package for installation
	u	     Unmark package for installation
	d 	     Mark package for deletion
	x	     Execute installation of marked package
	r            Refresh list from the server
```
-------------------------------------------------------------------------------
### TODO
- HARNESSING THE IMMENSE POWER OF THE LISP BEHEMOTH THAT IS EMACS (NEWSREADERS, MAIL, ORG MODE, MUSIC, GAMES, ETC)
-------------------------------------------------------------------------------
# WE'RE DONE!
GNU Emacs is Copyright (C) 1991-1995, 1998, 2001-2018 Free Software Foundation, Inc.
These notes were taken by davidm19 based on the built-in Emacs tutorial as well as the general Emacs documentation regarding Emacs git-vc.
