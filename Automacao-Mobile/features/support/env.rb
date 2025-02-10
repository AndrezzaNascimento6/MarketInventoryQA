require 'appium_lib'
require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'faker'
require 'yaml'
require_relative 'utils.rb'
include RSpec::Matchers

caps = YAML.load(File.read(File.join(File.dirname(__FILE__), 'capsAndroid.yml')))

caps[:appium_lib] = {
  server_url: 'http://127.0.0.1:4723' 
}

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
