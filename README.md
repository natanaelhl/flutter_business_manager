# flutter_business_manager

A Flutter project.

## User_Entity

Este arquivo define a entidade User dentro do domínio da aplicação. Ele utiliza o pacote Freezed para facilitar a criação de classes imutáveis e json_serializable para permitir a conversão entre objetos Dart e JSON.

## 📌 Funcionalidade

A entidade User é uma classe selada que representa diferentes estados do usuário no sistema. Ela pode assumir três formas:

- **User:** Representa um usuário comum com ID, nome e e-mail.

- User.notLogged(): Representa um usuário que ainda não está autenticado.

- User.logged(...): Representa um usuário autenticado, incluindo tokens para autenticação.
