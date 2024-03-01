//importing
import 'car.dart';

//subclass
//class ElectricCar extends Car, Speed {   //we can not inherit multiple classes
class ElectricCar extends Car {
  //So we can extends a abstract classe in dart, but we have to override every abstract methods of super classe.
  void _speed(double value) {
    _horsePower(value);
  }

  //Abstraction is hiding the complexity. And with encapsulation we can get that
  void _horsePower(double weight) {
    int hoursePower = 542;
    double speed = ((hoursePower * 745.7) / 120) / (weight * 6);
    print("Electric Car is runing at ${speed.toStringAsFixed(2)} mph.");
  }

  void _startEngine() {
    _carLight();
  }

  void _carLight() {
    print("Lights are funtional");
    _CarMotor(); //function calling.
  }

  void _CarMotor() {
    print("----Car started----");
  }

  @override //we have to override every unimplemented methods of super class
  void engine(String onOff) {
    if (onOff == 'on') {
      _startEngine();
    } else {
      print("----Car is turned off----");
    }
  }

  @override
  void sitSpace(String totalPassenger) {
    int capacity = 6;
    double carryWeight = (int.tryParse(totalPassenger) ?? 0) / capacity;
    _speed(carryWeight);
  }
}
