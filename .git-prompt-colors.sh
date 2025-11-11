# This is an alternative approach. Single line in git repo.
override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="hoxca_git-prompt"

  GIT_PROMPT_PREFIX="[ "
  GIT_PROMPT_SUFFIX=" ]"
  GIT_PROMPT_SEPARATOR=" |"
  GIT_PROMPT_STAGED=" ${Green}★ ${ResetColor}"
  GIT_PROMPT_CONFLICTS=" ${Red}✖ ${ResetColor}"
  GIT_PROMPT_CHANGED=" ${Blue}✚ ${ResetColor}"
  GIT_PROMPT_UNTRACKED=" ${Cyan}♟ ${ResetColor}"
  GIT_PROMPT_STASHED=" ${BoldBlue}✪ ${ResetColor}"
  GIT_PROMPT_CLEAN=" ${BoldGreen}✔ ${ResetColor}"

  GIT_PROMPT_COMMAND_OK="${Green}✔ "
  GIT_PROMPT_COMMAND_FAIL="${Red}✘ "

  GIT_PROMPT_START_USER="${Green}\u⨕\h${Blue}:\W${ResetColor} "
  GIT_PROMPT_END_USER="${ResetColor}${Magenta}|${ResetColor}● "
  GIT_PROMPT_END_ROOT="${BoldRed}# "

}

reload_git_prompt_colors "hoxca_git-prompt"
