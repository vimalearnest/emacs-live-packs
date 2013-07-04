# run this from $HOME

#!/bin/bash -xe

WDIR=$(dirname $0)

ln -nsf $WDIR/.emacs-live.el ~/.emacs-live.el
ln -nsf $WDIR/../emacs-live-packs ~/.emacs-live-packs

for i in $WDIR/*
do
  if [ -d "$i" ]; then
    pushd .
    cd "$i"
    echo "switching branch to master on " $PWD
    git checkout master
    popd
  fi
done
