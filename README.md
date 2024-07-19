# LexiFy

Welcome to LexiFy! This repository contains a comprehensive collection of Lex (lexical analyzer) codes for various purposes in compiler design and text processing.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)

## Introduction

LexiFy provides a collection of Lex codes for:

1. **Tokenization**: Converting input text into tokens.
2. **Pattern Matching**: Identifying patterns in text.
3. **Syntax Highlighting**: Highlighting syntax in code files.
4. **Custom Lexical Analyzers**: Building custom lexical analyzers for specific languages or requirements.

## Getting Started

To get started with the project, clone the repository to your local machine and follow the installation instructions below.

## Prerequisites

Ensure you have the following software installed on your system:

- Flex (Fast Lexical Analyzer)
- C Compiler (GCC, Clang, MSVC, etc.)

## Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/kaushiktarun05/LexiFy.git
    cd LexiFy
    ```

## Usage

You can compile and run the individual Lex files using the `flex` tool and a C compiler. Here is an example of how to compile and run a Lex file:

```sh
flex lexer/your_lex_file.l
gcc lex.yy.c -o lexer -lfl
./lexer
