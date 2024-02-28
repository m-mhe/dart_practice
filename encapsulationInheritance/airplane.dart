import 'vehicle.dart';

//inheritance
class Airplane extends Vehicle {
  double altitude;
  Airplane(
      {required this.altitude,
      required double accelerate,
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

  String airplaneInfo() {
    return "$brand $model\nMax speed ${maxSpeed()}kts , Max altitude $altitude ft, acceleration time ${accelerate}s\nAir time $houreAtMaxSpeed hour, total milage ${milage}nm and it can carry $carryWeight tons and $sit people can travel at a time\nColor $color, it was build in the year ${pYO}\nPrice - ${price}M USD, price per nm = ${pricePerMilage()}";
  }
}
