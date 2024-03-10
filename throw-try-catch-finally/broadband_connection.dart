class Offline implements Exception {
  @override
  String toString() {
    return "You are in offline mode.";
  }
}

class Server implements Exception {
  @override
  String toString() {
    return "Server down";
  }
}

//ISP class
class ISP {
  String ispName;
  ISP(this.ispName);

  int mbps(String monthlyPlan) {
    throw Exception();
    switch (monthlyPlan) {
      case "silver":
        return 15;
      case "gold":
        return 25;
      case "platinum":
        return 35;
      case "premium":
        return 100;
      default:
        return 00;
    }
  }
}
