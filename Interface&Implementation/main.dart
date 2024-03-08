import "computer.dart";

//if we write an abstract class, then we don't have to @override from implemented class.
//By implementing we can achieve interface.
abstract class DemoClass implements Computer {}

//In the case of extends we must have to @override all of the unimplemented methods.
class amdBuild extends Computer {
  @override
  void caSe() {
    print("This is a case of AMD build pc.");
  }

  @override
  void gpu() {
    // TODO: implement gpu
  }

  @override
  void motherboard() {
    // TODO: implement motherboard
  }

  @override
  void processor() {
    // TODO: implement processor
  }

  @override
  void psu() {
    // TODO: implement psu
  }

  @override
  void ram() {
    // TODO: implement ram
  }

  @override
  void ssd() {
    // TODO: implement ssd
  }
}

void main() {
  amdBuild myComputer = amdBuild();
  myComputer.caSe();
}
