require 'bundler'
Bundler.require :default

Rasti::Web.configure do |config|
  config.template_engines << :slim
end

require_relative 'web'