require 'rubygems'
require 'rack/contrib'
require 'rack-rewrite'

## Uncomment section below if you need some basic auth technique to close your site
#use Rack::Auth::Basic, "Private Area" do |username, password|
#  'secret' == password
#end

use Rack::ETag

## rename your page "public/maintenance.html.disable" to "public/maintenance.html" to lock all your site
use Rack::Rewrite do
  maintenance_file = File.expand_path('public/maintenance.html')
  send_file %r{.*}, maintenance_file, :if => Proc.new { |rack_env|
    File.exists?(maintenance_file) && rack_env['PATH_INFO'] !~ /\.(css|jpg|png)/
  }

  rewrite '/', '/index.html'
end

use Rack::StaticCache, :urls => ['/images', '/css', '/js'], :versioning => false, :root => 'public'
use Rack::Static, :urls => ['/images', 'css', 'js'], :root => 'public'
use Rack::Deflater

run Rack::Directory.new('public')
