require 'rubygems'
require 'bundler'
require 'yaml'

Bundler.require

APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '.'))
CONFIGS = YAML::load(File.read("#{APP_ROOT}/config/config.yaml"))

require "#{APP_ROOT}/app/application.rb"

run App