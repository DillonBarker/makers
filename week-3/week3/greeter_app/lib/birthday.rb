class Birthday

  def birthday(day, month)
    if day == Time.now.day && month == Time.now.month
      "HAPPY BIRTHDAY"
    else
      "It is not your birthday just yet"
    end
  end

end
