//The main funtion that will execute.
void main() {
  printer();
}

//printer function
void printer() {
  try {
    printHeadline();
  } on Offline {
    print("Something went wrong: ${Offline()}");
  } on SystemFail {
    print("Something went wrong: ${SystemFail().toString()}");
  } catch (e) {
    print("Something went wrong, ${e.toString()}");
  } finally {
    printContent();
  }
}

//This one does headline printing.
printHeadline() {
  //throw Exception("There is no headline to print");
  throw Offline();
  //throw SystemFail();
  print("Printing Headline..");
}

//This one does content printing.
printContent() {
  print("Printing content..");
}

//These are the custom exceptions.
class Offline implements Exception {
  @override
  String toString() {
    return 'You are in offline mode.';
  }
}

class SystemFail implements Exception {
  @override
  String toString() {
    return 'System has failed.';
  }
}
