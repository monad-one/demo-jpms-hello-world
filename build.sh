#!/bin/bash
set -e

echo "--- COMPILATION & PACKAGING ---"

echo " > creating clean directories"
rm -rf target
mkdir -p target/classes

echo " > compiling"
javac9 \
	-d target/classes \
	--module-version 0.1 \
	$(find src -name '*.java')

echo " > packaging"
jar9 --create \
	--file target/hello-world.jar \
	--module-version 0.2 \
	--main-class org.codefx.demo.jpms.HelloModularWorld \
	-C target/classes .
