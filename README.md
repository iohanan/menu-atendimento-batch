# Sistema de Atendimento em Batch (.BAT)

Durante meu trabalho anterior com atendimento ao cliente, eu precisava acessar muitos sites, sistemas internos e programas diferentes para realizar atendimentos. Esse processo tomava tempo e acabava deixando o fluxo mais lento do que deveria.
Para melhorar a velocidade e evitar retrabalho, decidi criar este sistema em Batch: um menu simples, rápido e centralizado que reúne todos os atalhos e rotinas que eu usava no dia a dia.

Ele automatiza a abertura de ferramentas, organiza as etapas de atendimento e facilita tarefas repetitivas, tornando tudo mais prático tanto para mim quanto para qualquer pessoa que precisasse seguir o mesmo fluxo.
Este repositório traz uma versão organizada do projeto, pensada para estudo, manutenção e para mostrar no portfólio como apliquei automação no ambiente de suporte.

Basicamente é um sistema modular desenvolvido inteiramente em **Batch
Script (Windows)**, organizado em múltiplos arquivos `.bat` e diretórios
funcionais.\

O sistema conta com: - Menu principal\
- Painéis de monitoramento\
- Seções independentes de triagem, consultas e sistema\
- Arquivos TXT externos para entrada e leitura\
- Scripts auxiliares para automação de tarefas

------------------------------------------------------------------------

## 📁 Estrutura do Repositório

    /
    ├── MENU.bat
    ├── PAINEL.bat
    ├── SISTEMA.bat
    ├── CONSULTAS.bat
    ├── TRIAGEM.bat
    │
    ├── TXT/
    │   ├── PERGUNTAS.txt
    │   └── DOCUMENTO.txt
    │
    └── PAINEIS/
        ├── PAINEL1.BAT
        ├── PAINEL2.BAT
        └── PRESS.BAT

------------------------------------------------------------------------

## 🧩 Descrição dos Componentes

### 🔹 MENU.bat

Arquivo principal do sistema.\
Centraliza a navegação e direciona para os módulos internos.

### 🔹 PAINEL.bat

Gerencia os painéis do sistema e a execução dos scripts dentro da pasta
**PAINEIS**.

### 🔹 SISTEMA.bat

Módulo destinado às operações internas e configurações gerais.

### 🔹 CONSULTAS.bat

Responsável pela parte de consultas, podendo utilizar arquivos TXT como
base.

### 🔹 TRIAGEM.bat

Executa etapas de triagem, leitura ou decisão baseadas no fluxo do
sistema.

------------------------------------------------------------------------

## 🗂 Pasta TXT

Contém arquivos auxiliares utilizados pelos scripts:

-   **PERGUNTAS.txt** -- Perguntas utilizadas por algum módulo do
    sistema.\
-   **DOCUMENTO.txt** -- Informações adicionais necessárias para
    consulta ou preenchimento.

------------------------------------------------------------------------

## 🖥 Pasta PAINEIS/

Contém os scripts responsáveis pela automação dos monitores/painéis.

### **PAINEL1.BAT e PAINEL2.BAT**

Scripts que finalizam o monitor atual e reiniciam o painel selecionado.

### **PRESS.BAT**

Script híbrido (Batch + JScript) que envia teclas automaticamente para
atualizar o monitor.

------------------------------------------------------------------------

## ⚙️ Tecnologias Utilizadas

-   Batch Script (.BAT)
-   JScript embutido em Batch
-   Rotinas nativas do Windows:
    -   `taskkill`
    -   `start`
    -   `timeout`
    -   `SendKeys`
    -   Estruturas de controle do CMD

------------------------------------------------------------------------

## 🚀 Como Executar

1.  Baixe o repositório ou clone:

        git clone https://github.com/SEU-USUARIO/SEU-REPOSITORIO.git

2.  Abra a pasta do projeto.

3.  Execute o arquivo principal:

        MENU.bat

4.  Navegue pelas opções utilizando o menu interativo.

------------------------------------------------------------------------

## 🎯 Objetivo do Projeto

Este repositório foi criado para demonstrar: - Organização de projetos
em Batch - Modularização em scripts - Automação simples para ambientes
Windows - Execução de tarefas através de menus interativos - Boas
práticas de estruturação para portfólio

------------------------------------------------------------------------

## 📢 Contribuições

Sinta-se livre para abrir Issues, propor melhorias ou solicitar novas
versões (PowerShell, Python, executável, etc.).
