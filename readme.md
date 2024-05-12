# Modelo de Banco de Dados para Voluntariado

É através desta etapa que definimos quais são as tabelas do banco, quais informações serão armazenadas dentro das tabelas e como serão feitas as relações entre as tabelas (antes do código).

### Objetivo:

É representar o mundo real observado com o máximo de precisão, para que assim seja possível ter as informações certas armazenadas e a partir delas tomar decisões de negócio.

<div align="center">

   <img src="./assets/Banco de Dados - Parceiros Voluntários.png" width="100%" height="30%"> 
   
</div>

## Tabelas e Relacionamentos

### Relacionamento 1:N Usuário -> Voluntariado
- Um Usuário pode ter muitos registros de Voluntariado.
- Chave Estrangeira: **id Usuário** na tabela Voluntariado.

### Relacionamento 1:1 Usuário -> Usuários por Ação Voluntária
- Um Usuário só pode estar em uma Ação Voluntária por vez.

### Relacionamento N:N Instituição por Ações Voluntárias -> Ações Voluntárias
- Uma Instituição pode ter várias Ações Voluntárias em aberto para seus usuários.
- Tabela auxiliar: Instituição por Ação Voluntária, com chaves estrangeiras para Instituição e Ações Voluntárias.

### Relacionamento 1:N Instituição -> Ações Voluntárias
- Uma Instituição pode ter muitas Ações Voluntárias.
- Chave Estrangeira: **id Instituição** na tabela Ações Voluntárias.

### Relacionamento N:N Ações Voluntárias -> Usuários por Ação Voluntária
- Vários usuários podem participar de várias Ações Voluntárias.
- Tabela auxiliar: Usuários por Ação Voluntária, com chaves estrangeiras para Usuário e Ações Voluntárias.
---