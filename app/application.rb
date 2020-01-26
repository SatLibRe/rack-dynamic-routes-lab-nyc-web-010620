<<<<<<< HEAD
class Application
# item_name = req.path.split("/items/").last # - is a string 
# @@items array - returns instances 

@@items = []
=======
require "pry"

class Application
>>>>>>> edcffb5c2446390743867f7b1a620b3950fad694

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path.match(/items/)
            item_name = req.path.split("/items/").last
<<<<<<< HEAD
            if @@items.find {|item| item.name == item_name}
                matching_item_instance = @@items.find {|item| item.name == item_name}
                resp.write matching_item_instance.price 
            else 
                resp.status = 400
                resp.write "Item not found"
            end 
        else 
            resp.status = 404
            resp.write "Route not found"
=======
            if @@items.include?(item_name)
                return item_name.price
            end 
>>>>>>> edcffb5c2446390743867f7b1a620b3950fad694
        end 
        resp.finish
    end 

end 