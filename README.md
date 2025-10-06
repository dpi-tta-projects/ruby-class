# grade-runner-project-template

This template can be used to create projects with unit tests using [grade_runner](https://github.com/dpi-tta/grade-runner) and [rspec](https://rspec.info/) gems.

## Writing Projects

### Hiding Files/Folders

We prefer to hide complexity until trainees are ready for it. See [Cognitive Load Theory](https://github.com/dpi-tta/learn/blob/main/doc/writing_lessons.md#2-chunking-and-progression-cognitive-load-theory).

You can toggle displaying files/folders by commenting out "files.exclude" in [VS Code Settings](.vscode/settings.json).

## Documentation

Each exercise should have header comments with Goal and Expected Output.

```md
# inventory.rb
#
# Goal:
#   Use the hash `stock = { "apple" => 10, "banana" => 5 }` to print inventory count
#
# Expected Output:
#   "banana: 5"
#   "grape: Not in stock"
#
```

## Instructions

Run your Ruby file by typing `ruby` and then the name of the file you want to run in the Terminal.

### Grading

Run the command `rake grade` (or `bin/grade`) to grade your work.
