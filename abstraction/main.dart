import 'combustion_car.dart';
import 'electric_car.dart';

void main() {
  CombustionCar rollsRoyceGhostBlackBadge = CombustionCar();
  ElectricCar teslaROATSTER = ElectricCar();

  //accessing public methods of those classes
  teslaROATSTER.engine('on');
  rollsRoyceGhostBlackBadge.engine('on');

  teslaROATSTER.sitSpace('5');
  rollsRoyceGhostBlackBadge.sitSpace('2');

  rollsRoyceGhostBlackBadge.sitSpace('8');
  teslaROATSTER.sitSpace('4');
  //Those speeds are a bit unreal * _ *
}
