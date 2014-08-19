require 'sinatra'
require 'slim'
require 'sass'
require 'coffee-script'
#require 'mongo'
require 'json'
require 'sinatra/reloader' if development?

require './app'
run App