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

    # Palette (Miasma, matches the starship prompt)
    set -l terracotta b36d43
    set -l gold       c9a554
    set -l olive      78824b
    set -l green      5f875f
    set -l sand       d7c483
    set -l fg         c2c2b0
    set -l gray       666666
    set -l brown      685742
    set -l bg1        444444

    set -g fish_color_normal         $fg
    set -g fish_color_command        $green
    set -g fish_color_keyword        $terracotta
    set -g fish_color_quote          $gold
    set -g fish_color_redirection    $sand
    set -g fish_color_end            $sand
    set -g fish_color_error          $terracotta
    set -g fish_color_param          $fg
    set -g fish_color_option         $olive
    set -g fish_color_operator       $sand
    set -g fish_color_escape         $sand
    set -g fish_color_comment        $brown
    set -g fish_color_autosuggestion $gray
    set -g fish_color_valid_path     --underline
    set -g fish_color_match          --background=$bg1
    set -g fish_color_selection      --background=$bg1
    set -g fish_color_search_match   --background=$gray
    set -g fish_color_history_current --bold
    set -g fish_color_cancel         $gray

    set -g fish_color_cwd            $gold
    set -g fish_color_cwd_root       $terracotta
    set -g fish_color_user           $green
    set -g fish_color_host           $olive
    set -g fish_color_host_remote    $olive
    set -g fish_color_status         $terracotta

    set -g fish_pager_color_progress               $gray
    set -g fish_pager_color_prefix                 $gold --bold --underline
    set -g fish_pager_color_completion             $fg
    set -g fish_pager_color_description            $gray
    set -g fish_pager_color_selected_background    --background=$bg1
    set -g fish_pager_color_selected_prefix        $gold --bold --underline
    set -g fish_pager_color_selected_completion    $fg
    set -g fish_pager_color_selected_description   $gray

    set -gx FZF_DEFAULT_OPTS "--color=fg:#$fg,bg:-1,hl:#$gold,fg+:#$fg,bg+:#$bg1,hl+:#$gold,info:#$olive,prompt:#$terracotta,pointer:#$terracotta,marker:#$green,spinner:#$green,header:#$gray,border:#$gray"
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

