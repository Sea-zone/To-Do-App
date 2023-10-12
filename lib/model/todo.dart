class ToDo {
  //properties
  String? id;
  String? todoText;
  bool? isDone;

  //Constructor
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  //creating an array of to do items

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Exercise', isDone: true),
      ToDo(id: '02', todoText: 'Buy Groceries', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Check Emails',
      ),
      ToDo(
        id: '04',
        todoText: 'Team Meeting',
      ),
      ToDo(
        id: '05',
        todoText: 'Working on mobile apps for 2 hours',
      ),
      ToDo(
        id: '06',
        todoText: 'Dinner with Family',
      ),
      ToDo(
        id: '07',
        todoText: 'Live Stream',
      ),
    ];
  }
}
