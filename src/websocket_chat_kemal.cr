require "kemal"

ws "/" do |socket|
  socket.send "Hello from Kemal!"

  socket.on_message do |message|
    socket.send "Echo back from server #{message}"
  end

  socket.on_close do
    puts "Closing socket"
  end
end

Kemal.run
