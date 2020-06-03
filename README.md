# dotfiles

# Install Powerline fonts
`cd ~/Downloads`
`git clone git@github.com:powerline/fonts.git`
`cd fonts`
`sh install.sh`

# Set Monospace font
`gsettings set org.gnome.desktop.interface monospace-font-name 'Roboto Mono for Powerline 11'`

# Install oh my fish and use agnoster theme
`curl -L https://get.oh-my.fish | fish`
`omf install agnoster`
`omf theme agnoster`

# Get Terminator color schemes
`cd ~/Downloads`
`git clone git@github.com:mbadolato/iTerm2-Color-Schemes.git`
