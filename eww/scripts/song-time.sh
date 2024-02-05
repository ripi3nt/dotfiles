#!/bin/bash

percent=$(mpc status "%percenttime%" | grep -Po "\d+")

echo $percent
