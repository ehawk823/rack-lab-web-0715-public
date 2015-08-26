class RandomNumber

      attr_accessor :app

      def initialize(app)
        @app = app
        puts "Initialized the RandomNumber"
      end

      def call(arg)
        status, headers, body = @app.call(arg)
        body << rand(1..10).to_s
        [status, headers, body]
      end

end
