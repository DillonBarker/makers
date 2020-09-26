=begin
SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user calls `lock` again they throw errors again.
=end

class Lock
  def initialize
    @lock = true
  end

  def lock
    @lock = true
    return self
  end

  def unlock
    @lock = false
    return self
  end
end

class SecretDiary < Lock

  def add_entry
    if @lock != true
      "add an entry"
    else
      "error"
    end
  end

  def get_entries
    if @lock != true
      "get the entries"
    else
      "error"
    end
  end
end
