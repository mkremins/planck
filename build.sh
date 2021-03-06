#!/bin/bash

# Build ClojureScript (currently requires lein)
cd planck-cljs
script/build
script/bundle
cd ..

# Xcode
xcodebuild -project planck.xcodeproj -scheme planck -configuration Release SYMROOT=$(PWD)/build
