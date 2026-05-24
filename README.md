# 🎮 Paranoia – Jogo de Terror em VisualG

## 📖 Descrição do Projeto

O **Paranoia** é um jogo de terror psicológico desenvolvido em **VisualG**, baseado em escolhas e eventos interativos no console. O jogador precisa explorar ambientes, tomar decisões e sobreviver aos acontecimentos misteriosos apresentados durante a gameplay.

O jogo utiliza elementos de suspense, mensagens de erro simuladas, transições “glitch”, avisos de jumpscare e movimentação de entidades para criar uma experiência imersiva mesmo sendo totalmente textual.

O principal objetivo do projeto é aplicar conceitos de **lógica de programação** utilizando o VisualG, explorando estruturas condicionais, laços de repetição, variáveis globais e modularização através de procedimentos.

---

# 🛠️ Documentação Técnica

## 🔹 Linguagem Utilizada

* VisualG (.alg)

## 🔹 Estruturas Aplicadas

### ✅ Entrada e Saída de Dados

O jogo utiliza os comandos:

* `leia` → para capturar decisões do jogador.
* `escreva/escreval` → para exibir diálogos, menus, cenas e informações.

Esses comandos são responsáveis pela interação entre o sistema e o jogador.

---

### ✅ Estruturas Condicionais

Foram utilizadas estruturas como:

* `se ... entao ... senao`
* `escolha ... caso`

Essas estruturas controlam:

* decisões do jogador;
* eventos da história;
* mudanças de estado;
* caminhos alternativos;
* interações durante a gameplay.

---

### ✅ Laços de Repetição

O projeto utiliza estruturas de repetição como:

* `enquanto ... faca`
* `para ... faca`

Os laços são usados para:

* controlar menus;
* criar temporizadores;
* repetir animações em texto;
* manter a execução da gameplay;
* exibir efeitos de transição.

---

### ✅ Modularização

O código foi dividido em vários **procedimentos**, melhorando a organização e facilitando a manutenção.

Alguns exemplos encontrados no projeto:

* `mostrar_logo1`
* `mostrar_logo2`
* `Glith_Transicao`
* `Tela_principal`

Essa separação ajuda a reutilizar partes do código e deixa a lógica mais organizada.

---

### ✅ Variáveis Utilizadas

O sistema utiliza variáveis do tipo:

* inteiro;
* lógico;
* real.

As variáveis controlam:

* estados do jogo;
* movimentação;
* menus;
* tempo;
* decisões;
* funcionamento da gameplay.

Exemplos:

* `status_global`
* `andar`
* `porta`
* `tempo_s`

---

## 🧠 Lógica Utilizada

O jogo segue uma estrutura baseada em fluxo narrativo.

Primeiro são exibidas telas iniciais, incluindo:

1. Logo de apresentação;
2. Aviso de epilepsia;
3. Tela de transição “glitch”.

Depois disso, o jogador é levado para a tela principal e para os eventos do jogo.

As escolhas feitas pelo jogador alteram o andamento da gameplay através de condicionais e controle de estados.

O sistema também utiliza temporizadores (`timer`) para criar:

* suspense;
* pausas;
* efeitos de animação;
* sensação de tensão.

---

## ⚠️ Limitações Conhecidas

* O jogo funciona apenas no ambiente do VisualG.
* Algumas animações dependem da velocidade do computador.
* O jogo é totalmente textual, sem interface gráfica.
* Certos eventos possuem fluxo linear.
* O sistema não salva progresso.

---

# ▶️ Manual de Utilização

## Passo 1 – Instalar o VisualG

Baixe e instale o VisualG no computador.

---

## Passo 2 – Baixar os Arquivos do Projeto

Faça o download do arquivo:

* `JOGO_DE_TERROR_V3.0.ALG`

---

## Passo 3 – Abrir o Código

1. Abra o VisualG.
2. Clique em **Arquivo → Abrir**.
3. Selecione o arquivo `.ALG` do projeto.

---

## Passo 4 – Executar o Projeto

Para iniciar o jogo:

* Clique em **Executar → Rodar Algoritmo**;
* Ou pressione a tecla **F9**.

---

## Passo 5 – Jogar

Siga as instruções exibidas no console do VisualG e faça as escolhas disponíveis durante a gameplay.

---

# 📂 Estrutura do Repositório

```bash
📁 jogoParanoia
 ├── JOGO_DE_TERROR_V3.0.ALG
 └── README.md
```

---

# 👥 Integrantes do Grupo

* Dhabia Luiza  
* Fernando Rolling
* Gabryel Max
* Pedro Henrique Terra

---

# ✅ Requisitos Atendidos

✔ Entrada e saída de dados
✔ Estruturas condicionais
✔ Laços de repetição
✔ Modularização com procedimentos
✔ Organização do código
✔ Documentação técnica
✔ Manual de utilização
✔ Estrutura pronta para GitHub

---

# 📌 Considerações Finais

O projeto Paranoia foi desenvolvido com foco no aprendizado de lógica de programação e criatividade utilizando o VisualG. O jogo demonstra a utilização prática dos principais conceitos estudados em sala, aplicados em um projeto interativo e organizado.
