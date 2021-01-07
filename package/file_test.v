module package

import os

fn test_read(){
	mut path := os.join_path(os.getwd(), "example", "readme.md")
	content := os.read_file(path) or {panic(err)}
	assert content == "# Hi from Reame.md"
}