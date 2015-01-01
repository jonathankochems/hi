#! /bin/sh
git clone https://github.com/fujimura/hpc-coveralls.git
git checkout circleci
cd hpc-coveralls
cabal sandbox init
cabal install -j --bindir ~/.cabal/bin --datadir ~/.cabal/share
cd ../
rm -rfv hpc-coveralls
