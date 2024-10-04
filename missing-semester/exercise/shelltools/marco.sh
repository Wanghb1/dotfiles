#!/bin/bash

export marcostack
marco() {
	marcostack=$(pwd)
}

polo() {
	cd "$marcostack" || exit
}
