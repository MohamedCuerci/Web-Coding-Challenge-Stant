# Web Coding Challenge

## Descrição do projeto
Você está planejando uma grande conferência de programação e recebeu diversas propostas de
palestras, mas você está com problemas para organizá-las de acordo com as restrições de tempo
do dia. Então, você decide escrever um programa para fazer isso por você.

* Ruby version -> ```ruby "3.0.2" ```
* Banco de dados utilizado -> ``` PostgreSQL 14.5```

## Como rodar o projeto:
- para criar o db:  ``` rails db:setup```
- task para importar o csv no db: ```rails csv:import```
- para iniciar servidor ``` rails server```
- para visualizar as palestras: ``` http://localhost:3000/```

obs: a task se encontra em lib/tasks/csv.rake

## Principais Gems usadas <br>
```
rails, "~> 7.0.3.1"
gem "pg", "~> 1.1"
gem "jbuilder"
gem 'rspec-rails'
gem "faker"
gem "importmap-rails"
gem "bootstrap"
```

## observações
1- Tive alguns problemas pessoas para resolver então não tive tempo para fazer o melhor projeto possível.<br>
2- Criei um endpoint pra cadastrar uma palesta e uma task para subir um arquivo com os horarios da conferencia. <br>
3- Como a modelagem de dados ficou em aberto, prefiri tratar como um arquivo csv, adicinei um header para facilitiar a importação por meio de hash, oq melhora o tempo em grandes arquivos.<br>
4- Realizo uma filtragem dos dados pelo model e tambem na hora de importar o arquivo usando metodo uniq!<br>
5- Deixar a lógica do horario na view deixou ela bem poluida, porém não tive tempo pra melhorar isso.<br>
6- Eu iria criar um projeto no modo api do rails porém como preciso de um front-end básico, fiz da maneira "padrão", entretanto, tenho outro projeto no modo api que é mais completo com versionamento e query pela url que pode demostrar melhor como lido com uma api link: https://github.com/MohamedCuerci/desafio-backend-challenger

### Consideração pessoal
Curti demais fazer esse projeto, sinto que aprendiz bastante mesmo sendo um projeto simples.
