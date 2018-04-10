Dado(/^que estou logado no Suite/) do                                                   
  @login = Home_login.new 
  @login.load
  
  @login.login('will','will')

  #@login.msg

  
end

Quando("Acessar a pagina create task") do
  @cad = Cred_tarefa.new
  @cad.creden
end

Quando("Efetuar um novo cadastro de task com os seguintes dados {string}{string}{string}{string}{string} {string} {string} {string}{string}{string}{string}") do |string, string2, string3, string4, string5, string6, string7, string8, string9, string10, string11|
  @cad = Cred_tarefa.new
  @cad.preencher(string, string2, string3, string4, string5, string6, string7, string8,string9,string10,string11 )
end

Entao("Uma nova task  e gerada {string}") do |string|
  @cad.msgtsk(string)
end

Quando("estiver na tela para a edição dos dados {string}") do |string|
@edita = Edit_tarefa.new
#@edita.load
@edita.edicao(string)

end

Quando("editar os dados e salvar {string}") do |string|
  @edita.editando(string)
end

Então("os dados serão editados com sucesso  {string}") do |string|
  @edita.msgtsked(string)
end

Quando("estiver na tela para a exclusão do usuário {string}") do |string|
  @deletare = Delit_tarefa.new
  @deletare.deletar(string)
end

Quando("excluir o usuário") do
  @deletare.delete_agora
end

Então("o usuario não estará mais na base de dados {string}") do |string|
  @deletare.valida_del(string)
end