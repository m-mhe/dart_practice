void main() {
  print(
      "------------------------Titel : function and null-safety------------------------\n");

  addN(double a, double b) {
    return a + b;
  }

  subN({required double a, double b = 0}) {
    print(a - b);
  }

  double? mulN({required double a, double? b}) {
    return a * (b ?? 0);
  }

  double divN({required a, required b}) {
    return a / b;
  }

  modN([double? a, double? b]) {
    return (a ?? 0) % (b ?? 0);
  }

  print(
      "Addition - ${addN(5, 6)}\nSubtraction - ${subN(a: 6, b: 5)}\nMultiplication - ${mulN(a: 5, b: 6)}\nMultiplication2 - ${mulN(a: 5)}\nDivition - ${divN(a: 5, b: 6).toStringAsFixed(2)}\nRemainder - ${modN(5, 6)}\nRemainder2 - ${modN()}\n");

  subN(a: 5, b: 6);
  print(divN(a: 5, b: 6).toStringAsFixed(2));
  print(subN(a: 5, b: 6));

  print(recursiveFn());
  print(switchCase(8));
}

//function
String? switchCase(double gpaPoint) {
  //switch case
  switch (gpaPoint) {
    case (1 || 2):
      return "It's one or two";
      break;

    case 3:
      return "It's three";
      break;

    case 4 && 5:
      return "It will always be false, and this switch-case will return null.";
      break;

    case 6:
      return "It's six";
      break;

    case 7:
      {
        return "It's seven";
      }
      break;

    case 8:
      return "It's eight";
      break;

    case 9:
      return "It's nine";
      break;

    case 10:
      return "It's ten";
      break;

    default:
      return null;
  }
}

//function
recursiveFn() {
  print("hola");
  return "hello";
  recursiveFn();
}
