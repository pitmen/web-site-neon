Dado('que eu acessei o site da NEON') do
    visit '/'
    @home = HomePage.new   
end
  
Dado('que acessei o menu Perguntas') do
    @home.acessa_menu_perguntas
end
  
Então('eu acesso a aba Perguntas do site da NEON com sucesso') do
    expect(@home).to have_css('#body > header > nav > ul > li:nth-child(3) > a', text: 'Tire suas dúvidas com a gente | Neon')
end