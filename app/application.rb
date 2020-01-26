class Application

  def call(env)
    resp = Rack::Response.new

    h = Time.now.hour.to_i

    if h < 12
      resp.write("Good Morning!")
    else
      resp.write("Good Afternoon!")
    end #if
    resp.finish
  end #call

end #class