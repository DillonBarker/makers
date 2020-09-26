require 'note_formatter.rb'

describe Note do
  describe '#display' do
    it 'displays formatted note' do
      formatter = NoteFormatter.new
      note = Note.new("title", "body", formatter)
      expect(note.display).to eq("Title: title\nbody")
    end

  end
end

describe NoteFormatter do
  describe '#format(note)' do
    it 'formats note' do
      formatter = NoteFormatter.new
      note = double(title: "title", body: "body")
      expect(formatter.format(note)).to eq "Title: title\nbody"
    end
  end
end
