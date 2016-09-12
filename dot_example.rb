#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'

program :name, 'dot_example'
program :version, '0.0.1'
program :description, ''

command :setup do |c|
  c.syntax = 'dot_example setup [options]'
  c.summary = 'Setup the githooks to automate the dot_example tasks'
  c.description = 'Setup the githooks to automate the dot_example tasks'
  #c.example 'description', 'command example'
  #c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Dot_example::Commands::Setup
  end
end

command :sync do |c|
  c.syntax = 'dot_example sync [options]'
  c.summary = 'Creates a new .env.example file with the keys from .env.'
  c.description = 'Creates a new .env.example file with the keys from .env.'
  #c.example 'dot_example sync', 'command example'
  #c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Dot_example::Commands::Sync
  end
end

command :check do |c|
  c.syntax = 'dot_example check_vars [options]'
  c.summary = 'Checks ENV keys to make sure they are up to date with those found in .env.example'
  c.description = ''
  #c.example 'description', 'command example'
  #c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Dot_example::Commands::Check_vars
  end
end

