# this is the main entrypoint for the KidsRuby Editor
require 'rubygems'
require 'Qt4'

%w{ highlighter }.each do |f|
  require "#{File.dirname(__FILE__)}/lib/#{f}.rb"
end

%w{ version ruby_highlighter runner }.each do |f|
  require "#{File.dirname(__FILE__)}/app/models/#{f}.rb"
end

%w{ main controls editor output }.each do |f|
  require "#{File.dirname(__FILE__)}/app/widgets/#{f}.rb"
end

app = Qt::Application.new(ARGV)

main = MainWidget.new()
main.show()

app.exec()