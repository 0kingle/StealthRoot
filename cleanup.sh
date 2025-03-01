#!/bin/bash

# Script de limpeza do StealthRoot

# Define variáveis
ROOTFS_DIR="system-update"
PROOT_BIN="systemd-helper"

# Remove o diretório do sistema de arquivos
if [ -d "$ROOTFS_DIR" ]; then
    rm -rf "$ROOTFS_DIR"
fi

# Remove o binário renomeado
if [ -f "$PROOT_BIN" ]; then
    rm "$PROOT_BIN"
fi

# Pequeno atraso para imitar comportamento natural
sleep 1

echo "StealthRoot limpo com sucesso. Nenhum rastro deixado."
