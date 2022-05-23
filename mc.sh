#!/bin/bash

echo "What MC Version would you like to install?"
read version
if [ $version ]; then
	echo "Installing version: $version"
	echo $(wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar)
	echo $(java -jar BuildTools.jar --rev $version)
else
	echo "No input detected. shutting program down."
fi
