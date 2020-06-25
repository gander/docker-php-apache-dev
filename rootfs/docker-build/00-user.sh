#!/usr/bin/env bash

adduser --disabled-password --gecos '' --uid "${DEV_USER_UID:=1000}" dev &&
  adduser dev sudo &&
  echo "dev ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/dev
