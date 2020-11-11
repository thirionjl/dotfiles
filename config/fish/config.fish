set --erase fish_greeting

alias j z

abbr -a hd /usr/bin/head -n 20
abbr -a search grep -i -R --color

abbr -a la ls -Ahl
abbr -a ll ls -hl
abbr -a ls ls -h

abbr -a dim docker images
abbr -a dpa docker ps -a
abbr -a dps docker ps
abbr -a dri docker rmi
abbr -a drm docker rm
abbr -a dst docker stop

abbr -a gad git add
abbr -a gap git add -p
abbr -a gbd git branch -d
abbr -a gbr git branch -r
abbr -a gca git commit --amend -v
abbr -a gcb git checkout -b
abbr -a gcf git clean -dfx
abbr -a gci git commit -v
abbr -a gcn git clean -dnx
abbr -a gco git checkout
abbr -a gdc git diff --cached
abbr -a gdi git diff
abbr -a gfe git fetch
abbr -a gls git ls
abbr -a gll git ll
abbr -a gra git rebase --abort
abbr -a grc git rebase --continue
abbr -a gri git rebase -i
abbr -a grs git rebase --skip
abbr -a gst git status -bs
abbr -a gpu git pull
abbr -a gpr git pull --rebase
abbr -a grm "git fetch; and git rebase origin/master"
abbr -a gpo "git push --set-upstream origin (git_current_branch)"
abbr -a gpf git push -f

abbr -a sctl systemctl
abbr -a jctl journalctl -b -u

abbr -a mci mvn clean install
abbr -a mst mvn clean install -DskipTests
alias mfa='egrep --color -R "(Failures:|Errors:) [1-9][0-9]*" **/target'
abbr -a jno jupyter-notebook

abbr -a cve python3 -m venv ./venv
abbr -a ave source ./venv/bin/activate.fish
abbr -a dae deactivate

if set -q TILIX_ID
   bash -c "source /etc/profile.d/vte.sh"
end

if test -e ~/.config/fish/config.fish.local
  source ~/.config/fish/config.fish.local
end
