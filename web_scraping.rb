require 'Nokogiri'
require 'open-uri'

page = 'http://www.google.com.br/?gws_rd=cr&ei=svnTWLLKC4WWwgS9iZroAw#q=testes&*'
parse_page = Nokogiri::HTML(open(page))
test =  parse_page.css('a')
puts test
test.each{|test| puts test.text }
