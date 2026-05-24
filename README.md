# Criptografador e Descriptografador - Cifra de César

## 📋 Descrição do Projeto

Este projeto implementa um **criptografador e descriptografador** baseado na clássica **Cifra de César** em Haskell. A aplicação oferece uma interface interativa para o usuário criptografar e descriptografar mensagens através da técnica de deslocamento alfabético.

### 🏗️ Organização do Projeto

O projeto está estruturado em **3 módulos Haskell**:

```text
criptografador-descriptografador-cifra-cesar/
├── Main.hs
├── Criptografia.hs
└── Descriptografia.hs
```

- **`Main.hs`**: Módulo principal que gerencia a interface do usuário. Oferece um menu interativo onde o usuário insere a mensagem, define o valor de deslocamento e escolhe entre criptografar ou descriptografar.

- **`Criptografia.hs`**: Módulo responsável pela criptografia. Implementa a função `criptografar` que desloca cada letra da mensagem por um valor especificado, preservando maiúsculas/minúsculas e caracteres especiais.

- **`Descriptografia.hs`**: Módulo responsável pela descriptografia. Implementa a função `descriptografar` que realiza o deslocamento inverso, recuperando a mensagem original.

Ambas as funções do sistema utilizam uma função auxiliar para realizar as conversões, a função `deslocaChar`. Essa função é responsável por deslocar cada caractere alfabético de acordo com o valor informado pelo usuário, preservando a diferença entre letras maiúsculas e minúsculas. Na criptografia, o deslocamento é positivo e na descriptografia é negativo. Ademais, a função utiliza o operador **mod 26**, garantindo que o deslocamento funcione corretamente mesmo quando o valor informado for maior que 26, fazendo com que a contagem retorne ao início do alfabeto de forma circular.

### ⚙️ Como Funciona

1. O usuário insere uma mensagem e um valor de deslocamento (inteiro)
2. Seleciona a operação desejada: **Criptografar** ou **Descriptografar**
3. A cifra de César desloca cada letra por `n` posições no alfabeto
4. Letras maiúsculas e minúsculas são tratadas separadamente
5. Caracteres especiais e espaços permanecem inalterados

---

## 🚀 Tecnologia Utilizada
<img src="https://img.shields.io/badge/-Haskell-5D4F85?style=for-the-badge&logo=haskell&logoColor=white" height="40">

---

## 🔧 Como Executar o Projeto

### Pré-requisitos
- [GHC](https://www.haskell.org/ghc/) (Glasgow Haskell Compiler) instalado

### Executando
1. Clone o repositório:
   ```bash
   git clone git@github.com:Davizitos57/criptografador-descriptografador-cifra-cesar.git
   cd criptografador-descriptografador-cifra-cesar
   ```

2. Compile e execute o programa:
   ```bash
   ghci Main.hs
   ghci> main
   ```

3. Siga as instruções interativas do programa para criptografar ou descriptografar mensagens usando a Cifra de César.

---

## 👨‍🏫 Créditos

Projeto desenvolvido para a disciplina **CSI107 - Linguagens de Programação**  
**Professor:** Luiz Carlos Bambirra Torres

**Alunos:**
- [Davi Abner Almeida Santiago](https://github.com/Davizitos57)
- [Hálisson Silveira Piovezana ](https://github.com/HalissonPiov)