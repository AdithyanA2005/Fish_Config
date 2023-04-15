# This is our cmd input prompt 
function fish_prompt
    set -l current_user (whoami)  # Current username
        
    # Git details with paranthesis removed
    set -l git_details (string replace '(' '' (__fish_git_prompt))
    set -l git_details (string replace ')' '' $git_details)

    # ==> FIRST LINE
    echo
    echo -n $green'╭─◎ '
    echo -n $red$current_user
    echo -n $green' ⧗ '
    echo -n $red$hostname
    echo -n $gray' ⟶  '
    echo -n '🐕 '
    echo -n $gray(pwd | sed "s=$HOME==")
 
    # ==> SECOND LINE
    # Show venv if virtual environment exists
    echo
    echo -n $green'├─◎ '
    echo -n $yellow'Venv: '
    if set -q VIRTUAL_ENV >> /dev/null
      echo -n $purple'✔'
    else
      echo -n $purple'✗'
    end
    echo -n '  '

    # Show git details if folder is git repository
    echo -n $yellow'Git:'
    if git status >> /dev/null 2>&1
      echo -n $purple$git_details
    else
      echo -n $purple'✗'
    end 

    # ==> THIRD LINE
    echo
    echo -n $green'╰'
    echo -n $green'──'
    echo -n $green'▶ '
end
