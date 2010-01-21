#!/usr/bin/env bash

# This file will build a jar file and drop it in the current directory.

BUILD_DIR=`pwd`

cd $BUILD_DIR/core
mvn clean install
cd $BUILD_DIR/selenium-rc/server-coreless
mvn clean install
cd $BUILD_DIR/selenium-rc/selenium-server
mvn clean install

cp $BUILD_DIR/selenium-rc/selenium-server/target/selenium-server-1.0.1-standalone.jar $BUILD_DIR/selenium-sauce.jar