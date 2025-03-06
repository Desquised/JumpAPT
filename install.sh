#!/bin/bash

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  echo "Por favor, ejecuta este script con: source install.sh"
  exit 1
fi

if [ -n "$BASH_VERSION" ]; then
    CONFIG_FILE="$HOME/.bashrc"
    SHELL_NAME="Bash"
    read -r -d '' AUTOFIX_BLOCK << 'EOF'
# BEGIN AUTO-INSTALL AUTOFIX COMMAND (BASH)
SUGGESTION_FILE="/tmp/autofix_suggestion.txt"

command_not_found_handle() {
  local cmd="$1"
  local suggestion=""
  if command -v apt-get >/dev/null 2>&1; then
    suggestion="sudo apt install $cmd"
  elif command -v snap >/dev/null 2>&1; then
    suggestion="sudo snap install $cmd"
  else
    suggestion="sudo apt install $cmd"
  fi
  echo "$suggestion" > "$SUGGESTION_FILE"
  echo -e "\e[1;33mEl comando '$cmd' no se encontró.\e[0m"
  echo -e "\e[1;36mPulsa Esc dos veces para insertar: $suggestion\e[0m"
  return 127
}

_autofix_command() {
  if [[ -f "$SUGGESTION_FILE" ]]; then
    local suggestion
    suggestion=$(cat "$SUGGESTION_FILE")
    READLINE_LINE="$suggestion"
    READLINE_POINT=${#READLINE_LINE}
    rm -f "$SUGGESTION_FILE"
  else
    echo -e "\e[1;31mNo hay sugerencia almacenada.\e[0m\n\nPulse (ctrl + c) para salir..."
  fi
}

bind -x '"\e\e":_autofix_command'
# END AUTO-INSTALL AUTOFIX COMMAND (BASH)
EOF

elif [ -n "$ZSH_VERSION" ]; then
    CONFIG_FILE="$HOME/.zshrc"
    SHELL_NAME="Zsh"
    read -r -d '' AUTOFIX_BLOCK << 'EOF'
# BEGIN AUTO-INSTALL AUTOFIX COMMAND (ZSH)
SUGGESTION_FILE="/tmp/autofix_suggestion.txt"

command_not_found_handler() {
  local cmd="$1"
  local suggestion=""
  if command -v apt-get >/dev/null 2>&1; then
    suggestion="sudo apt install $cmd"
  elif command -v snap >/dev/null 2>&1; then
    suggestion="sudo snap install $cmd"
  else
    suggestion="sudo apt install $cmd"
  fi
  echo "$suggestion" > "$SUGGESTION_FILE"
  echo -e "\e[1;33mEl comando '$cmd' no se encontró.\e[0m"
  echo -e "\e[1;36mPulsa Esc dos veces para insertar: $suggestion\e[0m"
  return 127
}

_autofix_command() {
  if [[ -f "$SUGGESTION_FILE" ]]; then
    local suggestion
    suggestion=$(cat "$SUGGESTION_FILE")
    BUFFER="$suggestion"
    CURSOR=${#BUFFER}
    zle reset-prompt
    rm -f "$SUGGESTION_FILE"
  else
    echo -e "\e[1;31mNo hay sugerencia almacenada.\e[0m\n\nPulse (ctrl + c) para salir..."
  fi
}

zle -N _autofix_command
bindkey "\e\e" _autofix_command
# END AUTO-INSTALL AUTOFIX COMMAND (ZSH)
EOF
else
    echo "Shell no soportado. Este script solo funciona en Bash o Zsh."
    return 1
fi

if ! grep -q "BEGIN AUTO-INSTALL AUTOFIX COMMAND" "$CONFIG_FILE"; then
    echo "$AUTOFIX_BLOCK" >> "$CONFIG_FILE"
    echo "Se ha añadido el plugin de JumpAPT en $CONFIG_FILE."
else
    echo "El plugin de JumpAPT ya se encuentra en $CONFIG_FILE."
fi

eval "$AUTOFIX_BLOCK"

echo "$SHELL_NAME configurado correctamente. Los cambios se han aplicado a la sesión actual."
