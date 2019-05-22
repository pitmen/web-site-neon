# encoding: utf-8 
class HomePage < SitePrism::Page

    element :menu_perguntas, '#body > header > nav > ul > li:nth-child(3) > a'

    def acessa_menu_perguntas()
        find('menu[body > header > nav > ul > li:nth-child(3) > a').click 
       
        #menu_perguntas.click
        #PeguntasPage.new

    end
end