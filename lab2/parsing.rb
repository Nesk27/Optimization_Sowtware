require "open-uri"
require "nokogiri"

url = 'https://en.wikipedia.org/wiki/Seoul'
html = open(url)

doc = Nokogiri::HTML(html)

population = doc.css('tr[class="mergedrow"]')[8].css('td').text

puts population
