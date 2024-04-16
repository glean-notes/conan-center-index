#!/bin/bash

openssl_version="3.2.1"
profiles=("android_x86" "android_x86_64" "android_armv7" "android_armv8")

for profile in "${profiles[@]}"; do
    conan create . --build=missing --profile ../../../../glean-audio-library/conan_profiles/$profile -o "openssl/*:force_md5_x509_name_hashes=True" --version=$openssl_version
done
