void main() {
  //for loop
  for (int i = 1; i <= 100; i++) {
    print("Step $i");
  }

  //for in loop || it use as alternative of for each loop
  List<String> students = ["Emon", "Karim", "Rahim", "Shawfik", "kuddos"];
  int i = 1;
  for (String student in students) {
    if (i <= 5) {
      print("$i.$student");
    }
    i++;
  }

  //for each loop
  i = 1;
  students.forEach((element) {
    if (i <= 5) {
      print("\n$i.$element");
    }
    i++;
  });

  //while loop
  i = 0;
  while (i <= 5) {
    print("Step $i");
    i++;
  }
}
