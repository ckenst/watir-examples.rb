require 'watir'

browser = Watir::Browser.new :chrome

browser.goto 'watir.com'
browser.link(text: 'documentation').click

puts browser.title
# => 'Documentation – Watir Project...'
browser.close
