function md --description "Build and live preview Markdown"
    set -l file (realpath "$argv[1]")

    if test -z "$argv[1]"; or not test -f "$file"
        echo "Command: md <file.md>"
        return 1
    end

    set -l dir (dirname "$file")
    set -l name (basename "$file")
    set -l pdf_out (path change-extension .pdf "$file")
    set -l pdf_tmp "$pdf_out.tmp.pdf"

    echo "Compiling $name..."
    pandoc "$file" -o "$pdf_out" --pdf-engine=xelatex -V geometry:"top=3cm, bottom=3cm, left=3cm, right=3cm" -V mainfont="Arial" $argv

    evince "$pdf_out" >/dev/null 2>&1 &
    set -l viewer_pid $last_pid

    trap "kill $viewer_pid 2>/dev/null; rm -f '$pdf_tmp'; echo '\nStop supervising.'" EXIT INT TERM

    echo "Supervising $name (Press Ctrl+C to stop)..."
    watchexec -w "$dir" -f "$name" -- fish -c "
        echo '['(date +%H:%M:%S)'] Updating PDF...'
        if pandoc '$file' -o '$pdf_tmp' --pdf-engine=xelatex -V geometry:'top=3cm, bottom=3cm, left=3cm, right=3cm' -V mainfont='Arial'
            mv '$pdf_tmp' '$pdf_out'
            echo '['(date +%H:%M:%S)'] Completed!'
        else
            echo '['(date +%H:%M:%S)'] Error!'
        end
    "
end
