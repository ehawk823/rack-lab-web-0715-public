class RequestMethod

    attr_accessor :app

    def initialize(app)
      @app = app
      puts "Initialized the RequestMethod"
    end

    def call(arg)
      status, headers, body = @app.call(arg)
      body << arg["REQUEST_METHOD"]
      [status, headers, body]
      # [200, {"Content-Type" => "text/html"}, [arg]]
    end

end
