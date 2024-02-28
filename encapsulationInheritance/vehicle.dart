//super class
class Vehicle {
  //class properties
  String color;
  String brand;
  String model;
  int milage;
  double houreAtMaxSpeed;
  double accelerate;
  double carryWeight;
  int sit;
  double price;
  int? _produceYear; //privet properties

  //class constructor
  Vehicle(
      {required this.accelerate,
      required this.brand,
      this.sit = 1,
      required this.carryWeight,
      required this.color,
      required this.houreAtMaxSpeed,
      required this.milage,
      required this.model,
      required this.price});

  //method
  String maxSpeed() {
    double speed = milage / houreAtMaxSpeed;

    return "$speed";
  }

  String pricePerMilage() {
    double ppm = milage / price;
    return "$ppm";
  }

  void set pYI(String manufectureDate) {
    _produceYear = int.tryParse(manufectureDate) ?? 0;
  }

  int get pYO {
    return _produceYear ?? 0;
  }
}
