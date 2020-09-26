class NoteBook
  attr_reader :notes

  def initialize
    @notes = []
  end

  def view_notes
    @notes
  end

  def view_notes_with_tag(tag)
    @notes.select do |note|
      note[:tag] == tag
    end
  end
end
