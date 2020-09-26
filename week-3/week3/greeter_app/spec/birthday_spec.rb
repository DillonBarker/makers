require 'birthday'
describe Birthday do
  describe '#birthday?' do
    it 'returns true if today is enter month and date' do
      subject = Birthday.new
      expect(subject.birthday(Time.now.day,Time.now.month)).to eq "HAPPY BIRTHDAY"
    end
  end
end
