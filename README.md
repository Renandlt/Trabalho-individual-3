# Trabalho-individual-3
RESILIADATA Database

Este é um script SQL para criar o banco de dados RESILIADATA, destinado a armazenar informações relevantes sobre empresas parceiras, áreas, tecnologias, colaboradores e as relações entre eles.
Estrutura do Banco de Dados
Tabela Empresas

    id: Identificador único da empresa (INT).
    nome: Nome da empresa (VARCHAR, até 255 caracteres).

Tabela Áreas

    id: Identificador único da área (INT).
    nome: Nome da área (VARCHAR, até 255 caracteres).

Tabela Tecnologias

    id: Identificador único da tecnologia (INT).
    nome: Nome da tecnologia (VARCHAR, até 255 caracteres).
    id_area: Chave estrangeira referenciando a tabela Áreas (INT).

Tabela Tecnologias_Empresas

    id_empresa: Chave estrangeira referenciando a tabela Empresas (INT).
    id_tecnologia: Chave estrangeira referenciando a tabela Tecnologias (INT).
    Chave primária composta por (id_empresa, id_tecnologia).

Tabela Colaboradores

    id: Identificador único do colaborador (INT).
    nome: Nome do colaborador (VARCHAR, até 255 caracteres).
    id_empresa: Chave estrangeira referenciando a tabela Empresas (INT).

Inserção de Dados de Exemplo

O script inclui exemplos de inserção de dados nas tabelas, representando empresas, áreas, tecnologias e colaboradores.
Verificação dos Dados

Para garantir a correta execução do script, foram incluídas consultas de verificação após a inserção dos dados nas tabelas Empresas, Áreas, Tecnologias, Tecnologias_Empresas e Colaboradores.
Observações

    Certifique-se de ajustar os tipos de dados e tamanhos de campo conforme necessário para atender aos requisitos específicos do sistema RESILIADATA.
    Este script assume a criação de um novo banco de dados chamado "Resilia". Certifique-se de que você tenha as permissões necessárias para criar um banco de dados. Caso contrário, substitua "Create database Resilia;" pelo comando apropriado.
