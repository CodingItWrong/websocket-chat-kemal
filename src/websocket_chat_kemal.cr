require "kemal"

ws "/" do |socket|
  socket.send "Connected to Kemal"

  socket.on_message do |message|
    puts "Kemal received #{message}"
    socket.send "Response from Kemal: #{message}"
  end

  socket.on_close do
    puts "Closing socket"
  end
end

Kemal.run
