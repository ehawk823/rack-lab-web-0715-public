class ErbMaker

        attr_accessor :app

        def initialize(app)
          @app = app
          puts "Initialized the ErbMaker"
        end

        def call(arg)
          status, headers, _ = @app.call(arg)
          template = File.read("lib/templates/index.html.erb")
          erb = ERB.new(template).result(binding)
          [status, headers, [erb]]
        end

end
