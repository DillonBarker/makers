# Change this code
# class Diary
#
#   attr_reader :entries
#
#   def initialize
#     @entries = []
#   end
#
#   def add(title, body)
#     @entries << Entry.new(title, body)
#   end
#
#   def index
#     titles = @entries.map do |entry|
#       entry.title
#     end
#     titles.join("\n")
#   end
# end
#
# class Entry
#
#   attr_reader :title, :body
#
#   def initialize(title, body)
#     @title = title
#     @body = body
#   end
# end

class Diary

  attr_reader :entries

  def initialize
    @entries = []
  end

  def add(entry = Entry.new(title, body))
    @entries << entry
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

class Entry

  attr_reader :title, :body

  def initialize(title, body)
    @title = title
    @body = body
  end
end
