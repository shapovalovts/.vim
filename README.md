# Installation of my vimrc

## Requirements:

1. vim >= 9.0 (tested in CLI mode only)
2. Linux or MacOS
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
7.  tagbar
8.  kuznetsss/shswitch
9.  SearchComplete
10. vim-indent-guides.git
11. Vimerl
12. snipmate.vim
13. vim-eunuch
14. vim-repeat
15. vim-escript
16. vim-multiple-cursors
17. kshenoy/vim-signature
18. sheerun/vim-polyglot
19. mhinz/vim-signify
20. mhinz/vim-startify
21. chrisbra/Recover.vim
22. scrooloose/nerdcommenter
23. skywind3000/vim-quickui
24. ryanoasis/vim-devicons
25. bkad/CamelCaseMotion
26. junegunn/fzf
27. junegunn/fzf.vim
28. ryvnf/readline.vim
29. nkantar/SPI.vim
30. pechorin/any-jump.vim
31. junegunn/vim-peekaboo
32. markonm/traces.vim
33. ludovicchabant/vim-gutentags
34. rhysd/git-messenger.vim
35. editorconfig/editorconfig-vim
36. itspriddle/vim-shellcheck
37. tpope/vim-endwise
38. itspriddle/vim-stripper
39. tpope/vim-fugitive
40. airblade/vim-rooter
41. godlygeek/tabular
42. plasticboy/vim-markdown
43. unblevable/quick-scope
44. bfrg/vim-cpp-modern
45. lepture/vim-jinja
46. carlsmedstad/vim-bicep
47. vimwiki/vimwiki
