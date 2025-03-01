#!/bin/bash

# Script para executar comandos no ambiente StealthRoot

# Define variáveis
ROOTFS_DIR="system-update"
PROOT_BIN="systemd-helper"

# Verifica se o ambiente está configurado
if [ ! -d "$ROOTFS_DIR" ] || [ ! -f "$PROOT_BIN" ]; then
    echo "Erro: Ambiente StealthRoot não configurado. Execute install.sh primeiro."
    exit 1
fi

# Executa o ambiente isolado em modo silencioso
# Use ./systemd-helper -r system-update /bin/sh para shell interativo
./"$PROOT_BIN" -r "$ROOTFS_DIR" /bin/sh > /dev/null 2>&1 &

# Pequeno atraso para imitar comportamento natural
sleep 0.5

# O processo roda em background; use cleanup.sh para limpar
echo "Ambiente StealthRoot em execução. Use cleanup.sh para finalizar."
