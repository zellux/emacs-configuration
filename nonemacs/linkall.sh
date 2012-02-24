#!/bin/bash -x
ls | xargs -t -I{} ln {} ~/.{}

