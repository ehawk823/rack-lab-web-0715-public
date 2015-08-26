class ServerPort

  attr_accessor :app

  def initialize(app)
    @app = app
    puts "Initialized the ServerPort"
  end

  def call(arg)
    status, headers, body = @app.call(arg)
    if arg["PATH_INFO"] == "/about"
    [status, headers, ["<h1><a href='/'>Are you lost?</a></h1>"]]
    else
    body <<  arg["SERVER_PORT"]
    [status, headers, body]
    end
  end

end
