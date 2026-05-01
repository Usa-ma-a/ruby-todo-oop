# OOP To-Do List Application

A simple command-line to-do list written in Ruby using object-oriented design.

## Project Purpose

This project demonstrates how a basic procedural CLI application can be redesigned using Object-Oriented Programming concepts such as:

* Encapsulation
* Abstraction
* Separation of concerns

Instead of writing everything in one script, responsibilities are divided into classes, making the code more maintainable and scalable.

👉 For the procedural (non-OOP) version of this project, see:
**`ruby-todo-cli`** https://github.com/Usa-ma-a/ruby-to-do-cli.git

---

## Features

- Add tasks
- View tasks with completion status
- Mark tasks as done
- Delete tasks
- Clean object-oriented implementation with `Task` and `ToDoList` classes

## Project Structure

```
.
├── oop-to-do.rb
```

### Key Components

#### `Task`

* Represents a single task
* Stores task title and completion status
* Handles marking a task as complete

#### `ToDoList`

* Manages the list of tasks
* Handles adding, deleting, and updating tasks
* Controls how tasks are displayed

---

## Requirements

- Ruby (any recent version)

## Usage

Run the application:

```bash
ruby oop-to-do.rb
```

Then use the menu options to manage tasks:

1. Add Task - Enter a new task description
2. View Tasks - Display all current tasks
3. Mark Task as Done - Mark a task completed by its number
4. Delete Task - Remove a task by its number
5. Exit - Quit the application

## Example

```
--- TO-DO LIST MENU ---
1. Add Task
2. View Tasks
3. Mark Task as Done
4. Delete Task
5. Exit
Choose an option: 1
 Enter task: Finish homework
Task added.

--- TO-DO LIST MENU ---
1. Add Task
2. View Tasks
3. Mark Task as Done
4. Delete Task
5. Exit
Choose an option: 2
 Your Tasks:
1. [ ] Finish homework
```

---

## Limitations

* No data persistence (tasks reset after exiting)
* Basic input validation
* CLI-based (no graphical interface)

---

## Related Projects

* **`ruby-todo-cli`** https://github.com/Usa-ma-a/ruby-to-do-cli.git – Procedural version of this application

---


## Contributing

Contributions are welcome!

1. Fork the repository
2. Create a new branch
3. Make your changes
4. Submit a pull request

---

## License

This project is open source. Feel free to use and modify it.

> Simple tools build strong foundations. Start small, build smart, and scale later 🚀 