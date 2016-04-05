require "rubygems"
require "watir-webdriver"
require 'logger'
#require 'headless'

$log = Logger.new('results.log')
$log.info("First Line")
#browser = Watir::Browser.new :chromium
download_directory = "#{Dir.pwd}/"

browser = Watir::Browser.new :firefox, :profile => 'watir'

browser.goto 'https://login.xero.com'
#browser.goto 'https://go.xero.com/Dashboard/'
browser.button(:id => 'submitButton').click
puts browser.text.include? 'Reconcile'
$log.info browser.text

browser.close
