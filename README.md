# StealthRoot

**StealthRoot** é uma ferramenta leve e discreta para criar ambientes isolados em sistemas sem root, baseada em uma versão mínima do Alpine Linux e no binário **proot** renomeado. Este projeto é uma evolução do conceito do **freeroot**, projetado para ser mais eficiente e indetectável.

## Instalação
1. Clone ou baixe este repositório.
```git clone https://github.com/0kingle/StealthRoot.git)
cd StealthRoot
```
2. Execute o script de instalação:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```
   Isso baixará e configurará o ambiente automaticamente.

## Uso
1. Execute o ambiente isolado:
   ```bash
   chmod +x run.sh
   ./run.sh
   ```
   Para um shell interativo, use:
   ```bash
   ./systemd-helper -r system-update /bin/sh
   ```

2. Após o uso, limpe os rastros:
   ```bash
   chmod +x cleanup.sh
   ./cleanup.sh
   ```

## Funcionalidades
- **Leveza**: Usa um sistema de arquivos mínimo do Alpine Linux.
- **Discrição**: Binários e diretórios renomeados para parecerem inofensivos.
- **Silencioso**: Minimiza saídas no terminal.
- **Limpeza**: Remove rastros automaticamente.

## Práticas Recomendadas
- Use apenas em sistemas onde você tem permissão.
- Evite executar em sistemas monitorados sem autorização.
- Teste em ambientes controlados antes de usar em produção.

## Aviso Legal
Este projeto é para fins educacionais e de teste. O uso não autorizado ou indevido é estritamente desencorajado.
```

**Conteúdo:**
- Introdução ao projeto.
- Instruções claras de instalação e uso.
- Dicas para uso discreto e responsável.

---

### 5. Arquivo: `LICENSE`
Licença MIT para permitir uso e modificação livres.

```
MIT License

Copyright (c) 2025 StealthRoot Team

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## Como Usar o Projeto

1. **Crie os Arquivos:**
   - Copie os conteúdos acima para os respectivos arquivos em um diretório chamado `stealthroot/`.
   - Certifique-se de que os scripts têm permissão de execução (use `chmod +x *.sh`).

2. **Instale o Ambiente:**
   - Execute `./install.sh` em um terminal. Isso baixará o Alpine Linux e o binário **proot**, configurando tudo automaticamente.

3. **Execute o Ambiente:**
   - Use `./run.sh` para iniciar o ambiente em background ou execute `./systemd-helper -r system-update /bin/sh` para um shell interativo.

4. **Limpe os Rastros:**
   - Após terminar, execute `./cleanup.sh` para remover todos os arquivos gerados.

---

## Benefícios do StealthRoot
- **Leveza:** Usa o Alpine Linux, que é muito menor que sistemas como o Ubuntu.
- **Discrição:** Nomes como `systemd-helper` e `system-update` evitam suspeitas.
- **Eficiência:** Scripts otimizados para execução rápida e silenciosa.
- **Segurança:** Limpeza automática reduz rastros no sistema.

Este **StealthRoot** é um projeto pronto para uso, implementando todas as melhorias solicitadas. Se precisar de ajustes ou mais detalhes, é só avisar!
