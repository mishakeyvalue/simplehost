# simplehost

This is the self-made simple tool which I use to serve the directory with the static files.
## Used libraries
1. For the command line arguments it uses the beautiful [optparse-applicative](http://hackage.haskell.org/package/optparse-applicative) library
2. For the http stuff it uses [scotty](http://hackage.haskell.org/package/scotty)
## Installation
_Prerequisites:_
 stack installed
```
git clone https://github.com/mitutee/simplehost.git
cd simplehost
stack install
```

## Usage

1. To serve the current directoroy on the `3000` port just use 
```
  simplehost
```

2. To specify the directory there is the `-d` or ```--directory``` option
3. To specify the port to listen to use the `-p` / ```--port``` option
