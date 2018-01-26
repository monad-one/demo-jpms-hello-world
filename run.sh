#!/bin/bash
set -e

echo "--- RUNNING ---"

java9 \
	--module-path target/hello-world.jar \
	--module org.codefx.demo.jpms_hello_world
