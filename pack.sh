#!/bin/bash

rm Packages;
rm Packages.bz2;

dpkg-scanpackages -m debs / > Packages;

bzip2 -fks Packages;
