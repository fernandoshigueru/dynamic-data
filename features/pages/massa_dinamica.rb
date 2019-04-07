class MassaDinamica < SitePrism::Page
  
  set_url "http://google.com.br"

  element :input_dados, "input[name='q']"

  def usar_massa(cpf, id)
    input_dados.set("O cpf é #{cpf}, e o sticker #{id} ")
    puts ("#{cpf} / #{id}")
  end
end
