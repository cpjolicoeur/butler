require 'rubygems'
require 'sinatra'
require 'pathname'

get "/" do
  dir = "./files/"
  @links = Dir[dir+"*"].map { |file| file_link( file ) }.join
  erb :index
end

helpers do
  def file_link( _file )
    filename = Pathname.new( _file ).basename
    "<li><a href='#{_file}' target='_self'>#{filename}</a></li>"
  end
end
