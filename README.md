- EN

# Financial Transactions API

## 🚀 About The Project

This project is my implementation of a backend challenge to create a high-performance REST API for registering and querying statistics of financial transactions.

The main goal is to handle real-time transactions and provide consolidated statistics based on the last 60 seconds of activity.

### Deviations from the Original Proposal

While the original challenge suggested using Java/Spring Boot with in-memory data storage, I chose to develop this solution using a different tech stack to showcase my technical skills and preferences:

1.  **Language/Framework:** I used **Ruby on Rails**, a framework I appreciate for its developer productivity and elegant syntax.
2.  **Data Persistence:** Instead of storing data in memory, which would be volatile, I opted to use **MongoDB**. This choice provides a more robust, persistent, and scalable solution, which is better aligned with production-like scenarios.

## ⚙️ API Endpoints

The API adheres to the endpoints and business rules defined in the challenge:

| Method   | Endpoint         | Description                                                                                             |
| :------- | :--------------- | :------------------------------------------------------------------------------------------------------ |
| `POST`   | `/transacoes`    | Registers a new transaction. The request body must contain `valor` (amount) and `dataHora` (ISO 8601 timestamp). |
| `GET`    | `/estatistica`   | Returns statistics (`sum`, `avg`, `min`, `max`, `count`) for all transactions from the last 60 seconds. |
| `DELETE` | `/transacoes`    | Permanently deletes all transactions stored in the database.                                            |

## 🛠️ Tech Stack

* **Ruby on Rails 7** - Backend Framework
* **MongoDB** - NoSQL Database
* **Mongoid** - ODM (Object-Document Mapper) for Rails and MongoDB integration



- BR

# API de Transações Financeiras

## 🚀 Sobre o Projeto

Este projeto é a minha implementação de um desafio de backend para a criação de uma API REST de alta performance para o registro e consulta de estatísticas de transações financeiras.

O objetivo principal é gerenciar transações que ocorrem em tempo real e fornecer estatísticas consolidadas sobre os últimos 60 segundos de atividade.

### Diferenças da Proposta Original

Embora o desafio original sugerisse o uso de Java/Spring Boot com armazenamento de dados em memória, optei por desenvolver esta solução com um ecossistema diferente para demonstrar minhas habilidades e preferências técnicas:

1.  **Linguagem/Framework:** utilizei **Ruby on Rails**, um framework que aprecio pela sua produtividade e pela elegância do código.
2.  **Persistência de Dados:** Em vez de armazenar os dados em memória, o que seria volátil, optei por utilizar o **MongoDB**. Esta escolha oferece uma solução mais robusta, persistente e escalável, mais alinhada com cenários de produção.

## ⚙️ Endpoints da API

A API segue os endpoints e as regras de negócio definidas no desafio:

| Método | Endpoint         | Descrição                                                                                                  |
| :----- | :--------------- | :--------------------------------------------------------------------------------------------------------- |
| `POST` | `/transacoes`    | Registra uma nova transação. O corpo da requisição deve conter `valor` e `dataHora` (ISO 8601).              |
| `GET`  | `/estatistica`   | Retorna as estatísticas (`soma`, `média`, `mín`, `máx`, `contador`) das transações dos últimos 60 segundos. |
| `DELETE` | `/transacoes`    | Apaga permanentemente todas as transações registradas no banco de dados.                                   |

## 🛠️ Tecnologias Utilizadas

* **Ruby on Rails 7** - Framework backend
* **MongoDB** - Banco de dados NoSQL
* **Mongoid** - ODM (Object-Document Mapper) para integração entre Rails e MongoDB



