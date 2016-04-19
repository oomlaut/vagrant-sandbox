#!/usr/bin/env bash
 
echo "*** Updating package repo"
apt-get update
 
echo "*** Installing basics"
apt-get install -y git wget zsh 
 