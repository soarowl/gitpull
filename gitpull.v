#!/usr/bin/env -S v run

import os

fn main() {
	println('gitpull v0.0.5 by Zhuo Nengwen at 2023-03-06\n')

	files := os.ls('.')!
	for file in files {
		if os.is_dir(file) && file[0] != `.` {
			println(file)
			os.chdir(file)!
			os.system('git pull')
			os.system('git submodule update --remote --merge')
			os.chdir('../')!
			println('')
		}
	}
}
