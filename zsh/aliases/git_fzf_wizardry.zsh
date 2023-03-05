### fzf git + FZF wizardry
#
# The aliases defined here has the same pattern as ./git.zsh but starting
# with [f]git_alias so if you use the standard alias and change your mind
# To repeat with fzf do: CTRL-p f <enter>
#
# It's possible to combine these alias with the standard ones as well:
# eg. `gch $(fgb)` // pick a branch to checkout to using fzf
#
# I'm tellying you this is another level wizardry
#
# WARNING: Arguments are not allowed! It will simply fail.
# Fzf is used to pick the arguments.
#

local pick_first_column="awk '{print \$1}'"

function git_log_formatted () {
  if [[ -z "$1" ]]; then
    git log $1 --no-merges --pretty=format:"%h %s [%cn - %cr]"
  else
    git log --no-merges --pretty=format:"%h %s [%cn - %cr]"
  fi
}

# fzf git log (return commit hash)
local fzf_git_log_formatted="git_log_formatted | fzf"
alias fgl="$fzf_git_log_formatted | $pick_first_column"
alias fglt10="$fzf_git_log_formatted | head -n 10 | fzf | $pick_first_column"
alias fglt20="$fzf_git_log_formatted | head -n 20 | fzf | $pick_first_column"

# fzf git checkout (pick branch)
local git_branch_formatted="git branch -a --sort=committerdate --format='%(refname:short) [%(committerdate:relative)]'"
local fzf_git_branch="$git_branch_formatted | fzf --multi | $pick_first_column"

alias fgb=$fzf_git_branch
alias fgch="git checkout \$($fzf_git_branch)"

# fzf cherry-pick commit from branch
local fzf_git_log_from_branch="git_log_formatted \$($fzf_git_branch)"
local fzf_git_commit_from_log="$fzf_git_log_from_branch | fzf --sync | $pick_first_column"

alias fgcp="git cherry-pick \$($fzf_git_commit_from_log)"

# [f]zf (fuzzy find) [g]it [ch]eckout [p]ick branch
alias fgch="git checkout \$($fzf_git_branch)"

# fzf git [ch]eckout [p]ick from [t]op N
alias fgcht10='git checkout $(g bls --sort=-committerdate | head -n 10 | fzf)'
alias fgcht20='git checkout $(g bls --sort=-committerdate | head -n 20 | fzf)'

# fzf git status
local fzf_git_unstaged_files="git status --porcelain | fzf -m --no-height | awk '{print \$2}'"
alias fgs=$fzf_git_unstaged_files

# fzf git rebase
alias fgrb="git rebase \$($fzf_git_branch)"

# fzf git add
alias fga="git add \$($fzf_git_unstaged_files)"
