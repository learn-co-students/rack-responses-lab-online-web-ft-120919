class Application

  def call(env)
    response = Rack::Response.new

    if Time.now.hour.to_i < 12
      response.write "Morning"
    else
      response.write "Afternoon"
    end
    response.finish
  end
end
