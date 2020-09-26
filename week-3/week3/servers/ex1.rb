require 'socket'

class NoteList
  attr_reader :notes
  def initialize
    @notes = []
  end
end


  server = TCPServer.new(2345)
  notebook = NoteList.new
  socket = server.accept
  socket.puts "What do you say?"
  they_said = ""

  while they_said != "quit"

    they_said = socket.gets.chomp

    notebook.notes << they_said
    socket.puts "You added: #{they_said}. To your notes!"

  end
  notebook.notes
  socket.close


Server.new
