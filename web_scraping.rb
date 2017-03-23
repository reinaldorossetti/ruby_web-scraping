require 'Nokogiri'
require 'selenium-webdriver'

" Usando o Selenium com Web Scraping, para pegar uma quantidade de dados alta na tela.
No selenium isso seria feito de forma muito lenta.
"

page = 'http://www.google.com.br/?gws_rd=cr&ei=svnTWLLKC4WWwgS9iZroAw#q=testes&*'
# Ler o documento html.
driver = Selenium::WebDriver.for :chrome
driver.get page
parse_page = Nokogiri::HTML(driver.page_source)
# passando para utf-8, senao vai vir com caracteres invalidos.
parse_page.encoding = 'utf-8'
puts parse_page
# pesquisa na pagina usando css selector, vai trazer os elementos encontrados.
test =  parse_page.css('a')
puts test
# faz um loop para imprimir o texto dos elementos.
test.each{|test| puts test.text }
sleep 5
