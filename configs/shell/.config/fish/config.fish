fish_add_path $HOME/.local/bin $HOME/.pyenv/bin

abbr -a g git
abbr -a gc 'git checkout'
abbr -a ga 'git add -p'
abbr -a v nvim
abbr -a vim nvim

set -x LANG en_US.UTF-8

if status is-interactive
	if ! begin set -q TMUX; or set -q NO_LOCAL_TMUX; or ! set -q AUTO_TMUX; end
		# echo 'start tmux'
		exec tmux new-session -A -s main
	end
end


if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa'
	abbr -a ll 'exa -l'
	abbr -a lll 'exa -la'
else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	echo -n (hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end

[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

# Enable pyenv
pyenv init - | source


