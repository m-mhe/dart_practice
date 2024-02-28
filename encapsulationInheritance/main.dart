import 'airplane.dart';
import 'boat.dart';
import 'car.dart';
import 'motorbike.dart';
import 'vehicle.dart';

void main() {
  //class is a custom data-type

  //instances of classes
  Airplane boing747 = Airplane(
      altitude: 50000,
      accelerate: 48,
      brand: "BOING",
      carryWeight: 645.6,
      color: "White and Blue",
      houreAtMaxSpeed: 45.8,
      milage: 45489566,
      model: "747",
      price: 418.4,
      sit: 467);
  Boat barishalLanch = Boat(
      accelerate: 9560,
      brand: "ASOBO",
      carryWeight: 5607,
      color: "White",
      houreAtMaxSpeed: 12,
      milage: 77609,
      model: "M147",
      price: 78,
      sit: 4590);
  Car lembo = Car(
      accelerate: 2.5,
      brand: "LAMBORGINI",
      carryWeight: 7.5,
      color: "Orange",
      houreAtMaxSpeed: 4,
      milage: 9246,
      model: "REVELTO",
      price: 0.6,
      sit: 2);
  Motorbike honda = Motorbike(
      accelerate: 4,
      brand: "HOONDA",
      carryWeight: 1,
      color: "Red and black",
      houreAtMaxSpeed: 2,
      milage: 9000,
      model: "12H72",
      price: 0.02);

  //------------------Now we can access those as objects--------------------
  boing747.pYI = "1974";
  lembo.pYI = "2022";
  honda.pYI = "2005";
  barishalLanch.pYI = "2015";
  //printing a method from super class
  print(lembo.maxSpeed());
  //so this are the objects
  print(barishalLanch.boatInfo());
  print(honda.bikeInfo());
  print(boing747.airplaneInfo());
  print(lembo.carInfo());

  //-------------------------but for privet properties we have to take a different apporach-------------
  Vehicle test = Vehicle(
      accelerate: 4,
      brand: "HOONDA",
      carryWeight: 1,
      color: "Red and black",
      houreAtMaxSpeed: 2,
      milage: 9000,
      model: "12H72",
      price: 0.02);
  test.pYI = "2024";
  print(test.pYO);
}
