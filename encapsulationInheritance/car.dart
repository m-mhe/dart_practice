import 'vehicle.dart';

//inheritance
class Car extends Vehicle {
  Car(
      {required double accelerate,
      required String brand,
      int sit = 1,
      required double carryWeight,
      required String color,
      required double houreAtMaxSpeed,
      required int milage,
      required String model,
      required double price})
      : super(
            accelerate: accelerate,
            sit: sit,
            houreAtMaxSpeed: houreAtMaxSpeed,
            carryWeight: carryWeight,
            color: color,
            milage: milage,
            model: model,
            price: price,
            brand: brand);

  String carInfo() {
    return "$brand $model\nMax speed ${maxSpeed()}mph, acceleration time ${accelerate}s\nStandby at max-speed $houreAtMaxSpeed hour, total milage $milage mile and it can carry $carryWeight tons and $sit people can travel at a time\nColor $color, it was build in the year ${pYO}\nPrice - $price USD, price per mile = ${pricePerMilage()}";
  }
}
