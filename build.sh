#!/bin/bash
set -e

echo "--- COMPILATION & PACKAGING ---"

echo " > creating clean directories"
rm -rf target
mkdir -p target/classes

echo " > compiling"
javac9 \
	-d target/classes \
	$(find src -name '*.java')

echo " > packaging"
jar9 --create \
	--file target/hello-world.jar \
	--main-class org.codefx.demo.jpms.HelloModularWorld \
	-C target/classes .
