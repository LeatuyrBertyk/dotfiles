function cap
    if test (count $argv) -lt 1
        echo "Usage: cap <file> [extra silicon flags]"
        return 1
    end

    set -l input $argv[1]
    set -l title (path basename $input)
    set -l output (path change-extension png $input)

    silicon $input \
        -o $output \
        --window-title $title \
        --font "Hack Nerd Font Mono=20" \
        --theme Dracula \
        --background "#7aa2f7" \
        --pad-horiz 60 \
        --pad-vert 60 \
        --shadow-color "#1a1b26" \
        --shadow-blur-radius 30 \
        --shadow-offset-y 10 \
        $argv[2..-1]
end
