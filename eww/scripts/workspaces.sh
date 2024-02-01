#!/bin/bash

eww update activews=$1
hyprctl dispatch workspace $1
