require 'bundler'
require 'require_all'
require 'pry'
require 'nokogiri'
require "open-uri"

Bundler.require

require_relative './game_gem/game'
require_relative './game_gem/gamecli'
require_relative './game_gem/gamescraper'
