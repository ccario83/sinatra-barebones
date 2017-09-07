require 'sinatra'
require 'slim'
require 'sass'
require 'coffee-script'
require 'json'
require 'sinatra/reloader' if development?

require './app'
run App