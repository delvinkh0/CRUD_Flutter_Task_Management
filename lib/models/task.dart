class Task{
  int? id;
  String? title;
  String? note;
  int? isCompleted;
  String? date;
  String? startTime;
  String? endTime;
  int? color;
  int? remind;
  String? repeat;

  Task({
    this.id,
    this.title,
    this.note,
    this.isCompleted,
    this.date,
    this.startTime,
    this.endTime,
    this.color,
    this.remind,
    this.repeat,
});

  Task.fromJson(Map<String, dynamic>json){
    id= json['id'];
    title= json['title'];
    note= json['note'];
    isCompleted= json['isCompleted'];
    date= json['date'];
    startTime= json['startTime'];
    endTime= json['endTime'];
    color= json['color'];
    remind= json['remind'];
    repeat= json['repeat'];
  }
  Map<String, dynamic>toJson(){
    final Map<String, dynamic> data = new Map<String,dynamic>();
    data['id']=this.id;
    data['title']=this.title;
    data['note']=this.note;
    data['isCompleted']=this.isCompleted;
    data['date']=this.id;
    data['startTime']=this.id;
    data['endTime']=this.id;
    data['color']=this.id;
    data['remind']=this.id;
    data['repeat']=this.id;
    return data;
  }
}
// class Task {
//   int? id;
//   String? title;
//   String? note;
//   int? isCompleted;
//   String? date;
//   String? startTime;
//   String? endTime;
//   int? color;
//   int? remind;
//   String? repeat;
//
//   Task({
//     this.id,
//     this.title,
//     this.note,
//     this.isCompleted,
//     this.date,
//     this.startTime,
//     this.endTime,
//     this.color,
//     this.remind,
//     this.repeat,
//   });
//
//   // Metode untuk membuat objek Task dari JSON
//   factory Task.fromJson(Map<String, dynamic> json) {
//     return Task(
//       id: json["id"],
//       title: json["title"],
//       note: json["note"],
//       isCompleted: json["isCompleted"],
//       date: json["date"],
//       startTime: json["startTime"],
//       endTime: json["endTime"],
//       color: json["color"],
//       remind: json["remind"],
//       repeat: json["repeat"],
//     );
//   }
//
//   // Metode untuk mengonversi objek Task menjadi map yang dapat di-encode menjadi JSON
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {
//       'id': id,
//       'title': title,
//       'note': note,
//       'isCompleted': isCompleted,
//       'date': date,
//       'startTime': startTime,
//       'endTime': endTime,
//       'color': color,
//       'remind': remind,
//       'repeat': repeat,
//     };
//     return data;
//   }
// }
