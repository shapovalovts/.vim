# Installation of my vimrc

## Requirements:

1. vim >= 8.2 (tested in CLI mode only)
2. Linux
3. Font [DroidSansMono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DroidSansMono): configure it for the terminal
4. Finder [fzf](https://github.com/junegunn/fzf) (ensure fzf binary is in the $PATH)
5. ag [silversearcher-ag] (for AnyJump)
6. For C++ projects: ensure compile_commands.json is generated (for ALE).

## Installation

1. `cd ~`
2. `git clone git://github.com/shapovalovts/.vim.git`
3. `cd ~/.vim`
4. `mkdir spool`
5. `echo "source ~/.vim/vimrc" > ~/.vimrc`
6. Install [Vundle](https://github.com/gmarik/vundle) with `git clone http://github.com/gmarik/vundle.git bundle/vundle`
7. Run Vim (ignore warnings) and type `:VundleInstall` to install the configured plugins with Vundle
8. Restart vim
9. Enjoy!

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
6.  ALE (Asynchronous Lint Engine)
7.  OmniCppComplete
8.  tagbar
9.  Shswitch
10. SearchComplete
11. ShowMarks
12. vim-indent-guides.git
13. Vimerl
14. snipmate.vim
15. vim-eunuch
16. vim-repeat
17. vim-escript
18. vim-multiple-cursors
19. python-syntax
20. mhinz/vim-signify
21. mhinz/vim-startify
22. chrisbra/Recover.vim
23. scrooloose/nerdcommenter
24. skywind3000/vim-quickui
25. yanoasis/vim-devicons
26. bkad/CamelCaseMotion
27. bkad/CamelCaseMotion
28. junegunn/fzf.vim
29. ryvnf/readline.vim
30. nkantar/SPI.vim
31. pechorin/any-jump.vim
32. junegunn/vim-peekaboo
33. markonm/traces.vim
34. ludovicchabant/vim-gutentags
35. rhysd/git-messenger.vim
36. editorconfig/editorconfig-vim
37. itspriddle/vim-shellcheck
38. tpope/vim-endwise
39. itspriddle/vim-stripper
40. tpope/vim-fugitive
41. airblade/vim-rooter
42. godlygeek/tabular
43. plasticboy/vim-markdown
44. unblevable/quick-scope
45. bfrg/vim-cpp-modern
46. lepture/vim-jinja
