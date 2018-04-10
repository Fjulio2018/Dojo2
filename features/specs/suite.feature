 # language: pt
  # utf-8

@gerenciamento
Funcionalidade: Cadastrar usuario
Como um possivel cliente
Eu quero realizar o meu cadastro


Contexto: Acessar o site do Suite
Dado que estou logado no Suite 




@cadastro
Esquema do Cenario: Cadastro de task
Quando Acessar a pagina create task 
E Efetuar um novo cadastro de task com os seguintes dados "<nome_bug>""<data_inicial>""<hora_inicial>""<minuto_inicial>""<data_final>" "<hora_final>" "<minuto_final>" "<prioridade_bug>""<descricao_bug>""<status>""<related>"
Entao Uma nova task  e gerada "<nome_bug>"

Exemplos:
|nome_bug |data_inicial|hora_inicial|minuto_inicial|data_final|hora_final|minuto_final|prioridade_bug| descricao_bug|status|related|
|FirstBugArterate1 | 20180402 |    05      |     15        |20180402|   07     |     30      |    Medium    |Este bag foi causado pela falta de uma tabela de relacionamento...|Pending Input|Cases|



@editar
Esquema do Cenario: Realizar edição dos dados cadastrais

Quando estiver na tela para a edição dos dados "<nome_bug>"
E editar os dados e salvar "<descricao_bug>"
Então os dados serão editados com sucesso  "<descricao_bug>"
Exemplos:
|nome_bug |descricao_bug|
|FirstBugArterate1|Este BUG foi causado pela falta de uma tabela de relacionamento...Edição do dia de hoje|




@exclusao
Esquema do Cenario: Realizar exclusão do usuario
Quando estiver na tela para a exclusão do usuário "<nome_bug>"
E excluir o usuário
Então o usuario não estará mais na base de dados "<nome_bug2>"
Exemplos:
|nome_bug |nome_bug2|
|FirstBugArterate1|FirstBugArterate1|


