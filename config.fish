set TERM "xterm-256color"             
set EDITOR "micro"
set VISUAL "kate"

# Disables the welcome message
set fish_greeting

 # Cache command exit status    
set -g last_status $status 

# Adding bin to path
set PATH ~/.local/bin $PATH

# SETTING UP SHELL COLORS
set -g yellow (set_color FFE15D)    
set -g purple (set_color 9EA1D4)
set -g green (set_color ADE792)
set -g red (set_color FF597B)
set -g gray (set_color A8D1D1)

# SETTING UP GIT DETAILS
set -g __fish_git_prompt_char_cleanstate '😎'  # If nothing to show this will be shown with branch
set -g __fish_git_prompt_char_upstream_ahead ' ↑'  # No of commits to be pushed  
set -g __fish_git_prompt_char_stateseparator " 🔥 "  # Seperation before staged, unstaged, untracked group
set -g __fish_git_prompt_show_informative_status true  # Showing more infos than branch name
set -g __fish_git_prompt_char_stagedstate '✔'  # Symbol for staged no of files
set -g __fish_git_prompt_char_dirtystate ' ●'  # Symbols for unstaged no of files
set -g __fish_git_prompt_showuntrackedfiles true  # Will show no of untracked files
set -g __fish_git_prompt_char_untrackedfiles ' ✗'  # Symbol for no of untracked files


# This will run neofetch in the start of a new fish shell
if status --is-interactive
  lolcat ~/.config/fish/design.txt
end
