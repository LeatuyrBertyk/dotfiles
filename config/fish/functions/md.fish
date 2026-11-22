function md --description "Build and live preview Markdown"
    set -l file $argv[1]

    if test -z "$file"; or not test -f "$file"
        echo "Command: md <file.md>"
        return 1
    end

    set -l pdf_out (path change-extension .pdf "$file")

    echo "Compiling $file -> $pdf_out..."
    pandoc "$file" -o "$pdf_out" --pdf-engine=xelatex -V geometry:"top=3cm, bottom=3cm, left=3cm, right=3cm" -V mainfont="Arial" $argv

    evince "$pdf_out" >/dev/null 2>&1 &
    set -l viewer_pid $last_pid

    trap "kill $viewer_pid 2>/dev/null; echo '\nStop supervising.'" EXIT INT TERM

    echo "Supervising $file (Press Ctrl+C to stop)..."
    watchexec -w "$file" -- pandoc "$file" -o "$pdf_out" --pdf-engine=xelatex -V geometry:"top=3cm, bottom=3cm, left=3cm, right=3cm" -V mainfont="Arial"
end
