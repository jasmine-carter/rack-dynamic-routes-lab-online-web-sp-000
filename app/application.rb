class Application


  @@items = []

  def call(env)

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items"
      resp.write "items!"

    else
      resp.status = 404
    end
  end

end
