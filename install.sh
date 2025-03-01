#!/bin/bash

# Script de instalação do StealthRoot
# Configura um ambiente mínimo e discreto baseado em Alpine Linux

# Define variáveis
ALPINE_URL="http://dl-cdn.alpinelinux.org/alpine/v3.14/releases/x86_64/alpine-minirootfs-3.14.0-x86_64.tar.gz"
PROOT_URL="https://proot.gitlab.io/proot/bin/proot"
ROOTFS_DIR="system-update"
PROOT_BIN="systemd-helper"

# Executa em modo silencioso
echo "Configurando StealthRoot... (silencioso)"

# Baixa o sistema de arquivos mínimo do Alpine Linux
wget -q "$ALPINE_URL" -O alpine.tar.gz

# Cria o diretório discreto e extrai o sistema de arquivos
mkdir -p "$ROOTFS_DIR"
tar -xzf alpine.tar.gz -C "$ROOTFS_DIR" > /dev/null 2>&1
rm alpine.tar.gz

# Configura o DNS no ambiente isolado
echo "nameserver 8.8.8.8" > "$ROOTFS_DIR/etc/resolv.conf"

# Baixa o binário proot e renomeia para algo inofensivo
wget -q "$PROOT_URL" -O "$PROOT_BIN"
chmod +x "$PROOT_BIN"

# Simula comportamento natural com pequenos atrasos
sleep 1

echo "StealthRoot configurado com sucesso! Use run.sh para executar."
