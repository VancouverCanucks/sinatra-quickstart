require 'rubygems'  unless defined?(Gem)
require 'bundler'  unless defined?(Bundler)
require 'yaml'  unless defined?(YAML)

Bundler.require

APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '.'))
CONFIGS = YAML::load(File.read("#{APP_ROOT}/config/config.yaml"))

namespace :unicorn do
  
  desc "Start Unicorn"
  task :start do
    puts 'Starting Unicorn...'
    config = "#{APP_ROOT}/unicorn.rb"
    sh "APP_ROOT=#{APP_ROOT} bundle exec unicorn -D -c #{config}"
    puts 'unicorn:start completed.'
  end
 
  desc "Stop unicorn"
  task :stop do
    puts 'Stopping Unicorn...'
    unicorn_signal :QUIT
    puts 'unicorn:stop completed.'
  end
 
  desc "Restart unicorn with USR2"
  task :restart do
    puts 'Restarting Unicorn...'
    unicorn_signal :USR2
    puts 'unicorn:restart completed.'
  end
 
  desc "Increment number of worker processes"
  task :increment do
    puts 'Increasing the amount of Unicorn workers...'
    unicorn_signal :TTIN
    puts 'unicorn:increment completed.'
  end
 
  desc "Decrement number of worker processes"
  task :decrement do
    puts 'Decreasing the amount of Unicorn workers...'
    unicorn_signal :TTOU
    puts 'unicorn:decrement completed.'
  end
 
  desc "Unicorn pstree (depends on pstree command)"
  task :tree do
    puts 'Unicorn process tree:'
    sh "pstree '#{unicorn_pid}'"
  end
 
  def unicorn_signal signal
    Process.kill signal, unicorn_pid
  end
 
  def unicorn_pid
    begin
      File.read(APP_ROOT + "/tmp/pids/unicorn.pid").to_i
    rescue Errno::ENOENT
      raise "Unicorn doesn't seem to be running"
    end
  end
  
end