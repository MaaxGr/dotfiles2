# Typewritten Settings
export TYPEWRITTEN_CURSOR="beam"
export TYPEWRITTEN_GIT_RELATIVE_PATH=true
export TYPEWRITTEN_COLOR_MAPPINGS="primary:red;secondary:red;accent:white;foreground:white"

if [ "$(hostname)" = "maxpc" ] || [ "$(hostname)" = "arch-desktop" ]; then
    export TYPEWRITTEN_PROMPT_LAYOUT="singleline"
else
    export TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
fi

if [ "$(whoami)" = "root" ]; then
    export TYPEWRITTEN_SYMBOL="#"
fi