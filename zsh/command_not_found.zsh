command_not_found_handler(){
	command="/Applications/$1.app/Contents/MacOS/$1"
	if [ -x "$command" ]
	then
		shift
		$command "$@"
	else
		echo "$ZSH_NAME: command not found: $1"
		return 127
	fi
}