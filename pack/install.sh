#!/usr/bin/env bash
# Create new folder in ~/.vim/pack that contains a start folder and cd into it.
#
# Arguments:
#   package_group, a string folder name to create and change into.
#
# Examples:
#   set_group syntax-highlighting

function set_group () {
  package_group=$1
  path="$HOME/.vim/pack/$package_group/start"
  mkdir -p "$path"
  cd "$path" || exit
}

# Clone or update a git repo in the current directory.
#
# Arguments:
#   repo_url, a URL to the git repo.
#
# Examples:
#   package https://github.com/tpope/vim-endwise.git

function package () {
  repo_url=$1

  if [[ "$repo_url" != http* ]]; then
    repo_url="https://github.com/${repo_url}"
  fi

  expected_repo=$(basename "$repo_url" .git)
  if [ -d "$expected_repo" ]; then
    cd "$expected_repo" || exit
    result=$(git pull --force)
    echo "$expected_repo: $result"
  else
    echo "$expected_repo: Installing..."
    git clone -q "$repo_url"
  fi
}

(
  set_group general
  package 'https://tpope.io/vim/surround.git' &
  package 'https://tpope.io/vim/commentary' &
  wait
) &

(
  set_group ui
  package 'flazz/vim-colorschemes' &
  package 'kien/rainbow_parentheses.vim' &
  # package 'scrooloose/nerdtree' &
  # package 'scrooloose/nerdcommenter' &
  # package 'altercation/vim-colors-solarized' &
  wait
) &

# (
  # set_group ruby
  # package 'tpope/vim-rails' &
  # package 'tpope/vim-rake' &
  # package 'tpope/vim-bundler' &
  # package 'tpope/vim-endwise' &
  # package 'vim-ruby/vim-ruby' &
  # wait
# ) &

(
  set_group js
  package 'https://github.com/pangloss/vim-javascript.git' &
  package 'leshill/vim-json' &
  # package 'itspriddle/vim-jquery' &
  package 'mxw/vim-jsx'
  # package 'digitaltoad/vim-jade' &
  wait
) &

#(
  # set_group haskell
  # package 'lukerandall/haskellmode-vim' &
  # package 'eagletmt/ghcmod-vim.git' &
  # package 'eagletmt/neco-ghc' &
  # package 'scrooloose/syntastic.git' &
  # package 'shougo/vimproc.vim' &
  # package 'godlygeek/tabular.git' &
  # package 'ervandew/supertab.git' &
  # package 'purescript-contrib/purescript-vim'
  # wait
# ) &

(
  set_group syntax
  package 'groenewege/vim-less' &
  package 'MicahElliott/vrod' &
  package 'rvesse/vim-sparql' &
  package 'niklasl/vim-rdf' &
  package 'https://tpope.io/vim/markdown.git' &
  # package https://tpope.io/vim/css-color.git &
  # package 'mlochbaum/BQN' &
  wait
) &

# (
#   set_group clojure
#   package 'tpope/vim-fireplace'
#   package 'guns/vim-clojure-static'
#   package 'tpope/vim-classpath.git'
#   package 'guns/vim-clojure-highlight'
#   wait
# ) &

wait
