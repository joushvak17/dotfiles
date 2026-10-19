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

    # Palette
    set -l red    ee5a52
    set -l teal   51b8a1
    set -l green  63be54
    set -l lime   aac035
    set -l fg     d4be98
    set -l gray   928374
    set -l dim    665c54
    set -l bg1    3c3836

    set -g fish_color_normal         $fg
    set -g fish_color_command        $green
    set -g fish_color_keyword        $red
    set -g fish_color_quote          $lime
    set -g fish_color_redirection    $teal
    set -g fish_color_end            $teal
    set -g fish_color_error          $red
    set -g fish_color_param          $fg
    set -g fish_color_option         $teal
    set -g fish_color_operator       $teal
    set -g fish_color_escape         $teal
    set -g fish_color_comment        $gray
    set -g fish_color_autosuggestion $dim
    set -g fish_color_valid_path     --underline
    set -g fish_color_match          --background=$bg1
    set -g fish_color_selection      --background=$bg1
    set -g fish_color_search_match   --background=$dim
    set -g fish_color_history_current --bold
    set -g fish_color_cancel         $gray

    set -g fish_color_cwd            $teal
    set -g fish_color_cwd_root       $red
    set -g fish_color_user           $green
    set -g fish_color_host           $lime
    set -g fish_color_host_remote    $lime
    set -g fish_color_status         $red

    set -g fish_pager_color_progress               $gray
    set -g fish_pager_color_prefix                 $teal --bold --underline
    set -g fish_pager_color_completion             $fg
    set -g fish_pager_color_description            $gray
    set -g fish_pager_color_selected_background    --background=$bg1
    set -g fish_pager_color_selected_prefix        $teal --bold --underline
    set -g fish_pager_color_selected_completion    $fg
    set -g fish_pager_color_selected_description   $gray

    set -gx FZF_DEFAULT_OPTS "--color=fg:#$fg,bg:-1,hl:#$green,fg+:#$fg,bg+:#$bg1,hl+:#$green,info:#$lime,prompt:#$red,pointer:#$red,marker:#$teal,spinner:#$teal,header:#$gray,border:#$dim"
end

# Main editor
set -gx EDITOR (type -q nvim; and echo nvim; or echo vim)
