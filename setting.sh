#!/bin/bash
curl -LOk https://raw.githubusercontent.com/ytakeuchi/brewfile/master/Brewfile
printf '\e[33;1minstalling homebrew... \e[m\n'
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
printf '\e[34mrun brew doctor... \e[m\n'
which brew >/dev/null 2>&1 && brew doctor
printf '\e[34mrun brew update... \e[m\n'
which brew >/dev/null 2>&1 && brew update
printf '\e[34mrun brew upgrade... \e[m\n'
brew upgrade
printf '\e[34mrun brew bundle... \e[m\n'
brew bundle
printf '\e[34mrun brew cleanup... \e[m\n'
brew cleanup
printf '\e[33;1m**************************************************\n'
printf '             HOMEBREW INSTALLED! \xF0\x9f\x8d\xba \n'
printf '**************************************************\e[m\n'
