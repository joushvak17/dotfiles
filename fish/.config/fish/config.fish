# Set fish greeting off
set -g fish_greeting

if status is-interactive
    # Tool integrations
    type -q starship; and starship init fish | source
    type -q zoxide; and zoxide init fish | source
    type -q fzf; and fzf --fish | source

    # Aliases
    if type -q eza
        alias ls 'eza --icons --group-directories-first'
        alias ll 'eza -l --icons --git --group-directories-first'
        alias la 'eza -la --icons --git --group-directories-first'
        alias lt 'eza --tree --level=2 --icons'
    end
    type -q nvim; and alias vi nvim

    # Palette (Everforest dark hard, matches the starship prompt)
    set -l red    e67e80
    set -l blue   7fbbb3
    set -l green  a7c080
    set -l aqua   83c092
    set -l fg     d3c6aa
    set -l gray   859289
    set -l dim    7a8478
    set -l bg1    374247

    set -g fish_color_normal         $fg
    set -g fish_color_command        $green
    set -g fish_color_keyword        $red
    set -g fish_color_quote          $aqua
    set -g fish_color_redirection    $blue
    set -g fish_color_end            $blue
    set -g fish_color_error          $red
    set -g fish_color_param          $fg
    set -g fish_color_option         $blue
    set -g fish_color_operator       $blue
    set -g fish_color_escape         $blue
    set -g fish_color_comment        $gray
    set -g fish_color_autosuggestion $dim
    set -g fish_color_valid_path     --underline
    set -g fish_color_match          --background=$bg1
    set -g fish_color_selection      --background=$bg1
    set -g fish_color_search_match   --background=$dim
    set -g fish_color_history_current --bold
    set -g fish_color_cancel         $gray

    set -g fish_color_cwd            $blue
    set -g fish_color_cwd_root       $red
    set -g fish_color_user           $green
    set -g fish_color_host           $aqua
    set -g fish_color_host_remote    $aqua
    set -g fish_color_status         $red

    set -g fish_pager_color_progress               $gray
    set -g fish_pager_color_prefix                 $blue --bold --underline
    set -g fish_pager_color_completion             $fg
    set -g fish_pager_color_description            $gray
    set -g fish_pager_color_selected_background    --background=$bg1
    set -g fish_pager_color_selected_prefix        $blue --bold --underline
    set -g fish_pager_color_selected_completion    $fg
    set -g fish_pager_color_selected_description   $gray

    set -gx FZF_DEFAULT_OPTS "--color=fg:#$fg,bg:-1,hl:#$green,fg+:#$fg,bg+:#$bg1,hl+:#$green,info:#$aqua,prompt:#$red,pointer:#$red,marker:#$blue,spinner:#$blue,header:#$gray,border:#$dim"
end

# Main editor
set -gx EDITOR (type -q nvim; and echo nvim; or echo vim)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jjk339/miniconda3/bin/conda
    eval /home/jjk339/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/jjk339/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/jjk339/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/jjk339/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<
