
require 'webrick'

server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}

server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
server.mount('/goya', WEBrick::HTTPServlet::ERBHandler, 'goya.html.erb')
server.mount('/goyatest', WEBrick::HTTPServlet::ERBHandler, 'goyatest.html.erb')

# この一行を追記
server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')
server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')

# この一行を追記
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')
server.mount('/goya_z.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya_z.rb')
server.mount('/goya_q.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya_q.rb')
server.start