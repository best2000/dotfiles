#set alias
alias bat "batcat"
alias ls "exa"
alias ll "ls -lah --tree"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

#cd to directory by fzf
function cdfz 
    cd $(find * -type d | fzf) 
end

#batcat file from fzf
function bafz 
    batcat $(find * -type f | fzf) 
end

#replace ll with exa
function ll 
    exa -lah --icons 
end