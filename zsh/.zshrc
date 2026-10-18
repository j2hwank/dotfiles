# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="eastwood"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PYENV_PATH=$HOME/.pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

#export QT_API="PyQt6"

#nvm 
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Brewfile update and GitHub push
alias brewupdate="brew bundle dump --file=~/dotfiles/Brewfile --force && cd ~/dotfiles && git add Brewfile && git commit -m 'Update Brewfile' && git push origin main"

# dotfiles(zsh) update and GitHub push
alias zshupdate="cd ~/dotfiles && git add zsh/.zshrc zsh/.zprofile && git commit -m 'Update Zsh config' && git push origin main"

#  New dotfiles, Brewfile apply
alias brewsync="cd ~/dotfiles && git pull origin main && brew bundle --file=~/dotfiles/Brewfile"
alias zshsync="cd ~/dotfiles && git pull origin main && stow zsh && source ~/.zshrc"
export PATH="$HOME/.local/bin:$PATH"

# Fedora
alias fedora-wake='wakeonlan -i 192.168.219.255 d8:5e:d3:5b:a0:f9'
alias fedora-off='ssh kwon@fedora "sudo /usr/sbin/poweroff"'

# KRISS VPN
alias vpn-on='sudo /Users/kwon/MyDevel/mailhub/venv/bin/python /Users/kwon/MyDevel/mailhub/vpn_cli.py connect'
alias vpn-off='sudo /Users/kwon/MyDevel/mailhub/venv/bin/python /Users/kwon/MyDevel/mailhub/vpn_cli.py disconnect'
alias vpn-status='/Users/kwon/MyDevel/mailhub/venv/bin/python /Users/kwon/MyDevel/mailhub/vpn_cli.py status'
alias mailon='/Users/kwon/MyDevel/mailhub/venv/bin/python /Users/kwon/MyDevel/mailhub/open_cli.py mailon'
alias krisstar='/Users/kwon/MyDevel/mailhub/venv/bin/python /Users/kwon/MyDevel/mailhub/open_cli.py krisstar'

. "$HOME/.local/bin/env"

# filehub — 실전 허브 기본값과 명령 별칭 (2026-07-19)
export FILEHUB_HUB="$HOME/Dropbox/FileHub"
alias filehub="$HOME/MyDevel/filehub/.venv/bin/filehub"

# ssh 접속 중 iTerm2/cmux(Ghostty) 색을 서버 그룹별로 바꾸고, 종료 시 원래 색으로 복원.
#   공개 서버(kwonlab/hostinger) Nord · 연구실(192.168.x) TokyoNight Storm · Tailscale 기기 Rosé Pine
#   · 폰 Gruvbox Dark · 그 외 Kanagawa Dragon (전체 테마: 배경·글자·커서·16색)
# 색이 남아 있으면 ssh-color-reset (cmux 사이드바 색까지 지우려면 ssh-color-reset --workspace)
# cmux 원격 tmux 미러링은 tmux-mirror <host> 로 — 같은 테마를 원격 tmux 패널에 적용
_ssh_group() {  # $1=실제 hostname → "테마 이름|탭·사이드바 색 hex", 색을 안 바꿀 호스트면 실패
  case $1 in
    72.62.71.189)        echo 'Nord|bf616a' ;;
    100.121.0.5)         echo 'Gruvbox Dark|fe8019' ;;
    192.168.*)           echo 'TokyoNight Storm|7aa2f7' ;;
    100.*|vov-desktop)   echo 'Rose Pine|c4a7e7' ;;
    ''|localhost|127.*)  return 1 ;;
    *)                   echo 'Kanagawa Dragon|8a9a7b' ;;
  esac
}
_ssh_hostname() { command ssh -G "$@" 2>/dev/null | awk '/^hostname /{print $2; exit}'; }
_theme_seq() {  # $1=cmux 번들 테마 이름 → 배경·글자·커서·16색을 바꾸는 OSC 시퀀스
  local f=/Applications/cmux.app/Contents/Resources/ghostty/themes/$1 k _ v
  [[ -r $f ]] || return 1
  while read -r k _ v; do
    case $k in
      palette)      printf '\e]4;%s;%s\a' ${v%%=*} ${v#*=} ;;
      foreground)   printf '\e]10;%s\a' $v ;;
      cursor-color) printf '\e]12;%s\a' $v ;;
      background)   printf '\e]11;%s\a' $v ;;
    esac
  done < $f
}
_ssh_theme() {  # $1=테마 이름, $2=iTerm2 탭·cmux 사이드바 색 hex
  local h=$2 bg
  _theme_seq "$1" > /dev/tty || return 1
  # cmux는 패널의 첫 OSC 11 배경을 그리지 않는다(manaflow-ai/cmux#7242, #7509). 같은 색을 다시 보내면
  # 변화 없음으로 무시하므로, 잠시 뒤 한 단계 다른 색 → 진짜 색 순서로 다시 보내 실제 변경을 일으킨다
  bg=$(awk '$1=="background"{print substr($3,2)}' "/Applications/cmux.app/Contents/Resources/ghostty/themes/$1")
  { sleep 0.3; printf '\e]11;#%06x\a\e]11;#%s\a' $((16#$bg ^ 1)) $bg > /dev/tty } &!
  [[ $TERM_PROGRAM == iTerm.app ]] && printf '\e]6;1;bg;red;brightness;%s\a\e]6;1;bg;green;brightness;%s\a\e]6;1;bg;blue;brightness;%s\a' \
    $((16#${h:0:2})) $((16#${h:2:2})) $((16#${h:4:2})) > /dev/tty
  # cmux 일부 패널은 OSC 11 배경을 화면에 안 그리는 버그가 있어(manaflow-ai/cmux#8870) 사이드바 워크스페이스 색도 함께 표시
  [[ -n $CMUX_WORKSPACE_ID ]] && cmux workspace-action --action set-color --color "#$h" &>/dev/null
}
ssh-color-reset() {
  printf '\e]111\a\e]110\a\e]112\a\e]104\a' > /dev/tty
  [[ $TERM_PROGRAM == iTerm.app ]] && printf '\e]6;1;bg;*;default\a' > /dev/tty
  [[ -n $CMUX_WORKSPACE_ID && $1 == --workspace ]] && cmux workspace-action --action clear-color &>/dev/null
  return 0
}
ssh() {
  local t
  if [[ $TERM_PROGRAM != (iTerm.app|ghostty) || ! -t 1 ]] || ! t=$(_ssh_group "$(_ssh_hostname "$@")"); then
    command ssh "$@"; return
  fi
  _ssh_theme "${t%|*}" "${t#*|}"
  command ssh "$@"
  local rc=$?
  ssh-color-reset --workspace
  return $rc
}
# tmux-mirror <host> [cmux ssh-tmux 옵션]: 원격 tmux 세션을 cmux 사이드바에 미러링하고 그룹 색으로 사이드바를 칠한다.
#   패널 색(OSC)은 칠하지 않는다 — 한 번도 안 보인 미러 패널에 색을 보내면 cmux가 그 패널을 영영 안 그려서(빈 화면).
#   ssh-tmux가 끝난 뒤에도 미러 워크스페이스 이름(= 원격 세션 이름)이 늦게 붙으므로 몇 초 동안 다시 찾는다.
tmux-mirror() {
  [[ -z $1 ]] && { echo "사용법: tmux-mirror <host> [cmux ssh-tmux 옵션]" >&2; return 1; }
  local dest=$1 t sessions s w i
  local -a left
  CMUX_QUIET=1 command cmux ssh-tmux "$@" || return
  t=$(_ssh_group "$(_ssh_hostname "$dest")") || return 0
  sessions=$(command ssh -o BatchMode=yes "$dest" 'tmux list-sessions -F "#{session_name}"') || return 0
  left=(${(f)sessions})
  for i in {1..20}; do
    for s in $left; do
      w=$(CMUX_QUIET=1 cmux workspace list 2>/dev/null | awk -v s="$s" '{r=$1=="*"?$2:$1; sub(/^[* ]*workspace:[0-9]+  /,""); sub(/  \[selected\]$/,""); if ($0==s) {print r; exit}}')
      [[ -n $w ]] && cmux workspace-action --workspace $w --action set-color --color "#${t#*|}" &>/dev/null && left=(${left:#$s})
    done
    (( $#left )) || break
    sleep 0.5
  done
  (( $#left )) && echo "tmux-mirror: 사이드바 색을 못 칠한 세션: $left" >&2
  return 0
}
# `cmux ssh-tmux <host> …` 를 그대로 쳐도 사이드바 색이 칠해지게 tmux-mirror로 보낸다 (그 밖의 cmux 명령은 그대로)
cmux() {
  if [[ $1 == ssh-tmux && -n $2 && $2 != -* ]]; then
    shift; tmux-mirror "$@"
  else
    command cmux "$@"
  fi
}
