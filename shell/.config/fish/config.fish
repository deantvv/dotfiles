abbr -a g git
abbr -a gc 'git checkout'
abbr -a ga 'git add -p'

set -x LANG en_US.UTF-8

if status is-interactive
	if ! set -q TMUX
		exec tmux
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

[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish
