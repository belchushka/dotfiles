# shellcheck shell=bash

bg="#0B0E14"
bg_panel="#11151C"
bg_line="#1B1F29"
fg="#BFBDB6"
muted="#565B66"
accent="#E6B450"
orange="#FF8F40"
blue="#59C2FF"
green="#AAD94C"
cyan="#95E6CB"
yellow="#FFB454"

TMUX_POWERLINE_SEPARATOR_LEFT_BOLD=""
TMUX_POWERLINE_SEPARATOR_LEFT_THIN=""
TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD=""
TMUX_POWERLINE_SEPARATOR_RIGHT_THIN=""

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=$bg
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=$muted

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD

TMUX_POWERLINE_WINDOW_STATUS_CURRENT=(
	"#[fg=$bg,bg=$orange]"
	"$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD"
	"#[fg=$bg,bg=$orange,bold]"
	" #I #W#{?window_zoomed_flag, 󰁌,} "
	"#[fg=$orange,bg=$bg,nobold]"
	"$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD"
)

TMUX_POWERLINE_WINDOW_STATUS_STYLE=(
	"fg=$muted,bg=$bg"
)

TMUX_POWERLINE_WINDOW_STATUS_FORMAT=(
	"#[fg=$muted,bg=$bg]"
	"  #I #W#{?window_zoomed_flag, 󰁌,}#{?window_last_flag, ,} "
)

TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
	"tmux_session_info $accent $bg"
	"mode_indicator $bg_line $fg"
	"vcs_branch $bg_panel $green ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
)

TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
	"lan_ip $bg_line $fg ${TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}"
	"wan_ip $bg_line $fg ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
	"pwd $bg_panel $muted"
	"battery $bg_line $yellow"
	"date $bg_line $cyan ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
	"time $blue $bg"
)
