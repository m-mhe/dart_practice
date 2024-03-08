//An interface is a contract between classes. Unlike other languages, Dart doesn't have the interface keyword. Instead, all classes are implicit interfaces. In practice, you often define an abstract class as an interface and implement the interface using other concrete classes.

//Let's creat an iterface in dart

abstract class Computer {
  //This are the interface of computer class
  void psu();
  void processor();
  void gpu();
  void motherboard();
  void ram();
  void ssd();
  void caSe();
  void _rgbLight();
}
