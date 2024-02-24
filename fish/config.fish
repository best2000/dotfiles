#set alias
alias bat "batcat"
alias ls "exa"

set fish_greeting ""

if status is-interactive
    echo ""
    neofetch
end

#cd to directory by fzf
function cdfz 
    cd $(find * -type d | fzf) 
end

function bafz 
    batcat $(find * -type f | fzf) 
end

function ll 
    exa -lah --icons 
end

starship init fish | source
