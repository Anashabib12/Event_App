class Task {
  final String taskName;
  final String date;
  final String timeStart;
  final String timeEnd;

  Task(
      {required this.taskName,
      required this.date,
      required this.timeStart,
      required this.timeEnd});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      taskName: json['taskName'],
      date: json['date'],
      timeStart: json['timeStart'],
      timeEnd: json['timeEnd'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'taskName': taskName,
      'date': date,
      'timeStart': timeStart,
      'timeEnd': timeEnd,
    };
  }
}
