# Installation of my vimrc

## Requirements:

1. vim >= 8.2 (tested in CLI mode only)
2. Linux
3. Font [DroidSansMono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DroidSansMono)
4. Finder [fzf](https://github.com/junegunn/fzf) (ensure fzf binary is in the $PATH)
5. ag [silversearcher-ag] (for AnyJump)

## Installation

1. `cd ~`
2. `git clone git://github.com/shapovalovts/.vim.git`
3. `cd ~/.vim`
4. `echo "source ~/.vim/vimrc" > ~/.vimrc`
5. Install [Vundle](https://github.com/gmarik/vundle) with `git clone http://github.com/gmarik/vundle.git bundle/vundle`
6. Run Vim (ignore warnings) and type `:BundleInstall` to install the configured plugins with Vundle
7. Restart vim
8. Enjoy!

## Screenshots

**Normal Mode**

[![Normal mode](https://github.com/shapovalovts/.vim/raw/master/screenshots/vim1.png)](https://github.com/shapovalovts/.vim/raw/master/screenshots/vim1.png)

**Insert Mode**

[![Insert mode](https://github.com/shapovalovts/.vim/raw/master/screenshots/vim2.png)](https://github.com/shapovalovts/.vim/raw/master/screenshots/vim2.png)

## Using plugins

1.  vundle
2.  nerdtree
3.  vim-easymotion
4.  vcscommand.vim
5.  vim-surround
6.  syntastic
7.  neocomplcache
8.  OmniCppComplete
9.  tagbar
10. a.vim
11. SearchComplete
12. ShowMarks
13. vim-indent-guides.git
14. Vimerl
15. snipmate.vim
16. vim-eunuch
17. vim-repeat
18. vim-escript
19. vim-multiple-cursors
20. python-syntax
21. mhinz/vim-signify
22. mhinz/vim-startify
23. chrisbra/Recover.vim
24. scrooloose/nerdcommenter
25. skywind3000/vim-quickui
26. yanoasis/vim-devicons
27. psliwka/vim-smoothie
28. airblade/vim-rooter
29. bkad/CamelCaseMotion
30. bkad/CamelCaseMotion
31. junegunn/fzf.vim
32. ryvnf/readline.vim
33. nkantar/SPI.vim
34. pechorin/any-jump.vim
35. junegunn/vim-peekaboo
36. markonm/traces.vim
37. ludovicchabant/vim-gutentags
38. rhysd/git-messenger.vim
