abbr -a g git
abbr -a mx 'mise exec'

if status --is-interactive
	switch $TERM
		case 'linux'
			:
		case '*'
			if ! set -q TMUX
				exec tmux set-option -g default-shell (which fish) ';' new-session -A -s main
			end
	end
end

mise activate fish | source
