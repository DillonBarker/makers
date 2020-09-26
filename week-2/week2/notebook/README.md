# Note book Domain Modelling Test

### What I did
- In this exercise I had to model out how I was going to make this work
- I used a class diagram system where I listed the class object I would need (Note, NoteBook)
- Then I moved on to work out which methods were best suited to each class.
- I decided that Notebook should only be viewing the notes within the book and note, can be the creation of the notes.
- This task was testing our use of diagramming so we weren't meant to use any testing (rspec)

This is the table I used to work on this task
|       Class       |   NoteBook  |       Note      |
|:-----------------:|:-----------:|:---------------:|
| Instance variable | @notes      | @note           |
| Methods           | view        | create          |
|                   | view_by_tag | create_with_tag |
