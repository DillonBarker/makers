# AMEND THE FOLLOWING CODE TO BE TESTABLE IN ISOLATION, THEN WRITE TESTS
# class Note
#   def initialize(title, body)
#     @title = title
#     @body = body
#     @formatter = NoteFormatter.new
#   end
#
#   def display
#     @formatter.format(self)
#   end
#
#   attr_reader :title, :body
# end
#
# class NoteFormatter
#   def format(note)
#     "Title: #{note.title}\n#{note.body}"
#   end
# end

class Note
  attr_reader :title, :body
  
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end


end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
