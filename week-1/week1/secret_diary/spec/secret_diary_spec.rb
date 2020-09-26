# require './secret_diary.rb'
#
# describe 'SecretDiary' do
#   it 'adds entry - gets nil' do
#     diary = SecretDiary.new
#     expect(diary.add_entry).to eq "error"
#   end
#   it 'gets entry - gets nil' do
#     diary = SecretDiary.new
#     expect(diary.get_entries).to eq "error"
#   end
#   it 'calls unlock then adds entry - should work' do
#     diary = SecretDiary.new
#     unlocked_diary = diary.unlock
#     expect(unlocked_diary.add_entry()). to eq "add an entry"
#   end
#   it 'calls unlock then gets entries - should work' do
#     diary = SecretDiary.new
#     unlocked_diary = diary.unlock
#     expect(unlocked_diary.get_entries()). to eq "get the entries"
#   end
#   it 'calls unlock then adds entry - works, then calls lock and gets error again' do
#     diary = SecretDiary.new
#     unlocked_diary = diary.unlock
#     expect(unlocked_diary.add_entry()). to eq "add an entry"
#     expect(unlocked_diary.get_entries()). to eq "get the entries"
#     unlocked_diary = unlocked_diary.lock
#     expect(diary.add_entry).to eq "error"
#   end
# end


require './secret_diary_refactored.rb'

describe SecretDiary do

  describe '#add_entry' do
    it 'Try to add an entry, without unlocking, so it should throw an error' do
      expect(subject.add_entry).to eq "error"
    end

    it 'Try to add an entry, after unlocking, so it should work' do
      expect(subject.unlock.add_entry).to eq "add an entry"
    end
  end

  describe '#get_entries' do
    it 'Try to get entries, without unlocking, so it should throw an error' do
      expect(subject.get_entries).to eq "error"
    end

    it 'Try to get entries, after unlocking, so it should work' do
      expect(subject.unlock.get_entries).to eq "get the entries"
    end
  end

  describe '#lock' do
    it 'Try to lock a locked lock - error' do
    expect(subject.lock).to eq "error"
    end
  end

end
