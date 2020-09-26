class Note

  def create_note(note, tag, notebook)
     notebook.notes << {tag: tag, note: note}
  end
end
