import 'vehicle.dart';

//inheritance
class Motorbike extends Vehicle {
  Motorbike(
      {required super.accelerate,
      required super.brand,
      super.sit = 1,
      required super.carryWeight,
      required super.color,
      required super.houreAtMaxSpeed,
      required super.milage,
      required super.model,
      required super.price});
  @override
  String pricePerMilage() {
    double ppm = milage / price;
    return "${ppm.toStringAsFixed(2)}";
  }

  String bikeInfo() {
    return "$brand $model\nMax speed ${maxSpeed()}mph, acceleration time ${accelerate}s\nStandby at max-speed $houreAtMaxSpeed hour, total milage $milage mile and it can carry $carryWeight tons and $sit people can travel at a time\nColor $color, it was build in the year ${pYO}\nPrice - $price USD, price per mile = ${pricePerMilage()}";
  }
}
