require 'watir'

# Start Browser
b = Watir::Browser.new :chrome

website = "http://www.kenst.com"
b.goto website

# Make browser wait and then click the Now
s = b.link text: 'Now'
s.wait_until_present
s.click

b.close
