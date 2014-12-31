#! /bin/sh

hash $1 2>/dev/null || {
  cabal get $1
  r=`ls | grep $1 | head -1`
  cd  $r
  cabal sandbox init
  cabal install -j --bindir ~/.cabal/bin --datadir ~/.cabal/share
  echo $r
  rm -rfv $r
}
