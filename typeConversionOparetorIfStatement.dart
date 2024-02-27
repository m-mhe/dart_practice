void main() {
  String headLine = "Type Conversion - Oparetor - If statement";
  print(headLine.toUpperCase());

  String numBer = "2000050.485124165154";
  dynamic totalBudget = double.tryParse(numBer) ?? 0.00;

  if (totalBudget.toDouble() <= 10000) {
    //if statement
    print("Sorry! Insufficient or invalid budget, a PC can't be build.");
  } else {
    if (totalBudget.toDouble() >= 30000) {
      print("We are building a gaming PC for you");
      var afterBasic =
          totalBudget.toDouble() - 25000; //type conversion & oparator
      if (afterBasic >= 15000) {
        print("We recument you to use a dadicated GPU with your build");
        if (afterBasic <= 15000) {
          print(
              "You've got a entry-level PC - Total cost ${totalBudget.toDouble()}");
        } else if (afterBasic <= 30000) {
          print(
              "You've got a mid-range PC - Total cost ${totalBudget.toDouble()}");
        } else if (afterBasic < 100000) {
          print(
              "You've got a high-range PC - Total cost ${totalBudget.toDouble()}");
        } else if (afterBasic <= 10000000) {
          print(
              "You've got a flexship PC - Total cost ${(totalBudget.toDouble()).toStringAsFixed(2)}");
        }
      }
    } else {
      print(
          "We are building a basic PC for you - Total cost ${totalBudget.toDouble()}");
    }
  }
}
