//importing
import 'car.dart';

//subclass
class CombustionCar implements Car, Speed {
  //So we can implement multiple classes in dart, but we have to override every methods of super classes.[Implement is kinda interface]
  void _speed(double value) {
    _horsePower(value);
  }

  //Abstraction is hiding the complexity. And with encapsulation we can get that
  void _horsePower(double weight) {
    int hoursePower = 845;
    double speed = ((hoursePower * 745.7) / 120) / (weight * 4);
    print("Combustion Car is runing at ${speed.toStringAsFixed(2)} mph.");
  }

  void _startEngine() {
    _carLight();
  }

  void _carLight() {
    print("Lights are funtional");
    _combustion(); //function calling.
  }

  void _combustion() {
    print("----Car started----");
  }

  @override //we have to override every methods of super classes.[Implement is kinda interface]
  void engine(String onOff) {
    if (onOff == 'on') {
      _startEngine();
    } else {
      print("----Car is turned off----");
    }
  }

  @override
  void sitSpace(String totalPassenger) {
    int capacity = 4;
    double carryWeight = (int.tryParse(totalPassenger) ?? 0) / capacity;
    _speed(carryWeight);
  }
}
