require 'appium_lib'
require 'rubygems'
require 'rspec'
require 'selenium-webdriver'
require 'cucumber'
require_relative 'utils.rb'

caps = YAML.load(File.read(File.join(File.dirname(__FILE__),'capabilities.yml')))
Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object