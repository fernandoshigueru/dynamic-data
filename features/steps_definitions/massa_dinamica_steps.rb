Dado("que esteja na tela do google") do
  @google_page = MassaDinamica.new
  @google_page.load
end
  
Quando("utilizar a massa do csv no search") do |dados|
  @cpf = eval(dados.rows_hash['cpf'])
  @id = eval(dados.rows_hash['id'])
  @google_page.usar_massa(@cpf, @id)
end

