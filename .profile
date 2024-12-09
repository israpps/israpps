#my custom commands
alias cls="clear"
alias ps2docker="docker run -ti -w /project -v $(pwd):/project ps2dev/ps2dev sh"
alias ps2dockerfull="docker run -ti -w /project -v $(pwd):/project ghcr.io/ps2homebrew/ps2homebrew:main sh"
alias ps2legacydocker="docker run -ti -w /project -v $(pwd):/project ps2dev/ps2dev:v1.0 sh"