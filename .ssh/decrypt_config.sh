#!/bin/sh
openssl aes-256-cbc -d -a -in config.enc -out config
