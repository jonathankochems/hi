#! /bin/sh
git clone https://github.com/fujimura/hpc-coveralls.git
cd hpc-coveralls
git checkout circleci
cabal sandbox init
cabal install -j --bindir ~/.cabal/bin --datadir ~/.cabal/share
cd ../
rm -rfv hpc-coveralls
