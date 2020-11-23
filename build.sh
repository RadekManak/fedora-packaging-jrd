#!/bin/bash
#This file is mostly for referrence and might be out of date.
#It isn't used in deployment.
rm -r result/
mkdir result
rm java-runtime-decompiler-*.tar.gz
spectool -g ./java-runtime-decompiler.spec
mock -r fedora-29-x86_64 --sources=. --spec=java-runtime-decompiler.spec
cp /var/lib/mock/fedora-29-x86_64/result/java-runtime-decompiler-*.fc29.src.rpm result/
mock -r fedora-29-x86_64 result/java-runtime-decompiler-*.fc29.src.rpm
cp /var/lib/mock/fedora-29-x86_64/result/java-runtime-decompiler-*.fc29.noarch.rpm result/
