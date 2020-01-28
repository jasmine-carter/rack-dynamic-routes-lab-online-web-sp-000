class Application

  @@items = []

  def call(env)

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items/"
      item_name = req.path.split("/").last
      @@items.find(ifnone = resp.write "Item not found"){|i| i.name == item_name}
        resp.write item.price
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
