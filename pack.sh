#!/bin/bash

rm Packages;
rm Packages.bz2;

dpkg-scanpackages debs / > Packages;
find . -name "\.DS_Store" -exec rm -rf {} \;

bzip2 -fks Packages;
