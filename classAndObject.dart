//class
class Student {
  //this is a class
  static String institude = "CPI";
  String name;
  int id;
  List subjects;
  //constructor
  Student({required this.name, required this.id, required this.subjects});

  //method
  String studentInfo() {
    String? department;
    if (subjects.contains("OOP")) {
      department = "CSC";
    } else if (subjects.contains("ME")) {
      department = "Mechanical";
    } else if (subjects.contains("Civil")) {
      department = "CT";
    } else {
      department = "NOT FOUND!";
    }

    return "Name : $name\nRoll : $id\nDepartment Name : $department";
  }
}

//inherited class
class GPA extends Student {
  //this is a subclass, it comes from the Student class by inheritance.
  Map<String, int> gainN;
  //constructor
  GPA(
      {required String name,
      required int id,
      required List subjects,
      required this.gainN})
      : super(name: name, id: id, subjects: subjects);

  //method
  double? cGPA() {
    double? grade;
    grade = ((gainN["subject1"] ?? 0) +
            (gainN["subject2"] ?? 0) +
            (gainN["subject3"] ?? 0) +
            (gainN["subject4"] ?? 0) +
            (gainN["subject5"] ?? 0) +
            (gainN["subject6"] ?? 0)) /
        6;
    if (grade >= 80) {
      grade = 4.00;
    } else if (grade >= 70) {
      grade = 3.50;
    } else if (grade >= 60) {
      grade = 3.00;
    } else if (grade >= 50) {
      grade = 2.50;
    } else if (grade >= 40) {
      grade = 2.00;
    } else {
      grade = 0.00;
    }

    return grade;
  }
}

void main() {
  print(
      "----------------------------Titel: Class and Object----------------------------");
  //instance of the GPA class, and now emon is an object.
  GPA emon = GPA(
      gainN: {
        "subject1": 83,
        "subject2": 80,
        "subject3": 77,
        "subject4": 85,
        "subject5": 83,
        "subject6": 81
      },
      name: "Momin Hosan Emon",
      subjects: ["MPI", "ADBMS", "OOP", "EF", "PCB&CM", "WD"],
      id: 486150);
  dynamic muksud = GPA(
      gainN: {
        "subject1": 71,
        "subject2": 80,
        "subject3": 68,
        "subject4": 55,
        "subject5": 50,
        "subject6": 77
      },
      name: "Muksudur Rahoman Miraj",
      subjects: ["MPI", "ADBMS", "SEO", "ME", "PCB&CM", "WD"],
      id: 489350);

  //now we can use this emon object in anywhere
  //print(emon.institude); wrong code
  print(Student.institude);
  print(emon.studentInfo());
  print(emon.cGPA());
  print(muksud.studentInfo());
  print(muksud.cGPA());
}
