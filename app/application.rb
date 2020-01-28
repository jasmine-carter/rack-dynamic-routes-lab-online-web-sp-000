class Application


  @@items = []

  def call(env)

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items/"
      if @@items.include?(item_path)
        item = @@items
      else
        resp.write "Item not found"
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
