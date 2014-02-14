# up

**up** is a command-line utility to upgrade packages managers. If you’re using
multiple managers, your workflow is something like this:

```sh
# upgrade homebrew
brew update && brew upgrade
# upgrade gems
gem update
# update opam
opam update && opam upgrade
# update npm
npm -g update
# etc
```

With **up**, it can be reduced to:

```sh
up brew gem opam npm
```

## Installation

```sh
mkdir -p ~/bin
curl -s https://raw.github.com/bfontaine/up/master/bin/up > ~/bin/up
chmod u+x ~/bin/up
```

If `~/bin` is not in your `PATH`, you have to add it:

```sh
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```

## Usage

`up` takes either a set of aliases or one of the following options:

```
up --help                  # show help and exit
up --version               # show version and exit
up --add <alias> <command> # add a new command
up --rm <alias>            # remove a command
up --list                  # list available commands
```

### Example

```sh
# add a command
up --add rvmall 'rvm all do gem update'

# execute a command
up rvmall

# execute multiple commands sequentially
up npm rvmall apt-get

# remove a command
up --rm rvmall
```
