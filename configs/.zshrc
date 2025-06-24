# enable powerlevel10k instant prompt. should stay close to the top of ~/.zshrc.
# initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${xdg_cache_home:-$home/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${xdg_cache_home:-$home/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# if you come from bash you might have to change your $path.
# export path=$home/bin:$home/.local/bin:/usr/local/bin:$path

# path to your oh my zsh installation.
export zsh="$home/.oh-my-zsh"

# set name of the theme to load --- if set to "random", it will
# load a random theme each time oh my zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $random_theme
# see https://github.com/ohmyzsh/ohmyzsh/wiki/themes
zsh_theme="robbyrussell"

# set list of themes to pick from when loading at random
# setting this variable when zsh_theme=random will cause zsh to load
# a theme from this variable instead of looking in $zsh/themes/
# if set to an empty array, this variable will have no effect.
# zsh_theme_random_candidates=( "robbyrussell" "agnoster" )

# uncomment the following line to use case-sensitive completion.
# case_sensitive="true"

# uncomment the following line to use hyphen-insensitive completion.
# case-sensitive completion must be off. _ and - will be interchangeable.
# hyphen_insensitive="true"

# uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# uncomment the following line if pasting urls and other text is messed up.
# disable_magic_functions="true"

# uncomment the following line to disable colors in ls.
# disable_ls_colors="true"

# uncomment the following line to disable auto-setting terminal title.
# disable_auto_title="true"

# uncomment the following line to enable command auto-correction.
# enable_correction="true"

# uncomment the following line to display red dots whilst waiting for completion.
# you can also set it to another string to have that shown instead of the default red dots.
# e.g. completion_waiting_dots="%f{yellow}waiting...%f"
# caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# completion_waiting_dots="true"

# uncomment the following line if you want to disable marking untracked files
# under vcs as dirty. this makes repository status check for large repositories
# much, much faster.
# disable_untracked_files_dirty="true"

# uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# you can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# hist_stamps="mm/dd/yyyy"

# would you like to use another custom folder than $zsh/custom?
# zsh_custom=/path/to/new-custom-folder

# which plugins would you like to load?
# standard plugins can be found in $zsh/plugins/
# custom plugins may be added to $zsh_custom/plugins/
# example format: plugins=(rails git textmate ruby lighthouse)
# add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $zsh/oh-my-zsh.sh

# user configuration

# export manpath="/usr/local/man:$manpath"

# you may need to manually set your language environment
# export lang=en_us.utf-8

# preferred editor for local and remote sessions
if [[ -n $ssh_connection ]]; then
  export editor='vim'
 else
  export editor='nvim'
fi

# compilation flags
# export archflags="-arch x86_64"

# set personal aliases, overriding those provided by oh my zsh libs,
# plugins, and themes. aliases can be placed here, though oh my zsh
# users are encouraged to define aliases within a top-level file in
# the $zsh_custom folder, with .zsh extension. examples:
# - $zsh_custom/aliases.zsh
# - $zsh_custom/macos.zsh
# for a full list of active aliases, run `alias`.
#
# example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# to customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ -f ~/.bash_aliases_qsc ]; then
	    . ~/.bash_aliases_qsc
fi

if [ -f ~/.bash_aliases ]; then
	    . ~/.bash_aliases
fi

bindkey '^ ' autosuggest-accept


export nvm_dir="$home/.nvm"
[ -s "$nvm_dir/nvm.sh" ] && \. "$nvm_dir/nvm.sh"  # this loads nvm
[ -s "$nvm_dir/bash_completion" ] && \. "$nvm_dir/bash_completion"  # this loads nvm bash_completion

bindkey '^h' backward-kill-word

# go
export path=$path:/usr/local/go/bin

# nvim
export path="$path:/opt/nvim-linux64/bin"

# user bin
export path="$path:/home/akash/bin/qsys"
export path="$path:/home/akash/bin"

export node_options="--max-old-space-size=16384"

if [[ $server_type == "node" ]]; then
	echo "starting node server"
	npm run start
	export server_type=""
fi

if [[ $qrem_ui == "qrem-ui" ]]; then
	echo "starting qrem ui"
	npm run qrem:watch
	export qrem_ui=""
fi

# eval "$(fzf --zsh)"
function y() {
	local tmp="$(mktemp -t "yazi-cwd.xxxxxx")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$pwd" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
export editor="nvim"
export helix_runtime=~/src/helix/runtime
