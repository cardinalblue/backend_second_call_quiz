module Rack
  class XMd5
    def initialize(app)
      @app = app
    end

    def call(env)
      @app.call(env)
    end
  end
end
