class MassaDinamica < SitePrism::Page
  
  set_url "http://google.com.br"

  element :input_cpf, "input[name='q']"

  def deletar_linha_csv
    binding.pry
    CSV.foreach("./features/support/massa/cpfs.csv") do |linha|
      previous = linha[0]
      linha.delete previous
      puts linha
    end
  end
end
