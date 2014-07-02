echo "=== $0 ==="
# apply dconf/gsettings
setcmd="gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/"

${setcmd} default-show-menubar false
${setcmd} scrollbar-position 'hidden'
${setcmd} font 'Monospace 8'
${setcmd} background-color '#000000000000'
${setcmd} foreground-color '#FFFFFFFFFFFF'
${setcmd} palette '#000000000000:#CCCC00000000:#4E4E9A9A0606:#C4C4A0A00000:#34346565A4A4:#757550507B7B:#060698209A9A:#D3D3D7D7CFCF:#555557575353:#EFEF29292929:#8A8AE2E23434:#FCFCE9E94F4F:#72729F9FCFCF:#ADAD7F7FA8A8:#3434E2E2E2E2:#EEEEEEEEECEC'
