# git
alias git_force_push='git push -f'
alias git_rebase_root='git rebase -i --root'
alias git_clean='git reset --hard; git clean -fdx'
alias git_update='git fetch -p; git reset --soft origin/$(git branch --show-current)'
alias git_discard='git checkout -- .'
alias git_rewrite='git commit --amend --no-edit; git push -f'
alias git_print_sha='git rev-parse --short HEAD'
alias git_print_branch='git branch --show-current'
alias git_count_commits='git rev-list --count HEAD ^$(git branch --show-current)'
alias git_show_branches='git branch --list'
alias git_count_branches='git branch --list | wc -l'
alias git_tree='git log --graph --oneline --decorate --all'
alias github='url=$(git remote get-url --all origin); open ${url/"git@github.com:"/"https://github.com/"}'

function git_rebase { git fetch -p; git rebase -i origin/$1 }
function git_delete_branch { git branch -D $1; git push origin --delete $1 }

# zsh
alias zsh_reload="source ~/.zshrc"

# directory & file
alias rmdir="rm -rf"
function mkcd { mkdir -p $1; cd $_ }
function swap {
	first=$1
	second=$2
	if [ -n "$second" ]; then
		mv $first tmp && 
		mv $second $first &&
		mv tmp $second &&
		exit 0
	fi
	exit 1
}

# convertions
function seconds_to_time {
	totalSeconds=$1

	d=$((totalSeconds/60/60/24))
	h=$((totalSeconds/60/60%24))
	m=$((totalSeconds/60%60))
	s=$((totalSeconds%60))
	
	local time

	(( $d )) && time+="$d day$( (( d > 1 )) && echo s) "
	(( $h )) && time+="$h hour$( (( h > 1 )) && echo s) "
	(( $m )) && time+="$m minute$( (( m > 1 )) && echo s) "
	time+="$s second$( (( s > 1 )) && echo s)"

	echo $time
}

# echo
function echo_bold { echo -e "\033[1m$@\033[0m" }
function echo_vars { for var in $@; do echo "$var=${(P)var}"; done }
function echo_exec {
	set +e
	echo_bold "Starting: \"$@\""

	time=`date +%s`
	$@; ret=$?
	timeEnd=`date +%s`

	runtime=$((timeEnd-time))
	((totaltime+=$runtime))

	if [ $ret -eq 0 ]; then
    	echo_bold "The process \"$@\" exited normally ($(seconds_to_time $runtime))"
	else
		echo_bold "The process \"$@\" failed ($(seconds_to_time $runtime))"
	fi

	set -e
	return $ret
}