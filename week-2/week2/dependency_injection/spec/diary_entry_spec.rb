require 'diary_entry.rb'

describe Diary do

  let(:entry) {double(:entry, title: "title", body: "body")}
  describe '#initialize' do
    it 'initializes with empty array of entries' do
      diary = Diary.new
      expect(diary.entries).to eq([])
    end
  end

  describe '#add(title, body)' do
    it 'makes a new entry with title and body adds to entries, tests entry count' do
      diary = Diary.new
      diary.add(entry)
      expect(diary.entries.count).to eq(1)
    end
  end

  describe '#index' do
    it 'lists the titles in the entries array' do
      diary = Diary.new
    3.times { diary.add(entry) }
      expect(diary.index).to eq "title\ntitle\ntitle"
    end
  end
end

describe Entry do
  describe '#initialize' do
    it 'intializes with title' do
      entry = Entry.new("title","body")
      expect(entry.title).to eq("title")
    end
    it 'intializes with body' do
      entry = Entry.new("title","body")
      expect(entry.body).to eq("body")
    end
  end
end
