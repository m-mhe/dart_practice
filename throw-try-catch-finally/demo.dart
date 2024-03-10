import 'broadband_connection.dart';

void main() {
  ISP ddn = ISP('DDN');
  try {
    print(ddn.mbps("gold"));
  } catch (e) {
    print('Something went wrong ${e.toString()}');
  } finally {
    print(
        "You are connected with ${ddn.ispName}. Your bandwidth speed is ${ddn.mbps("gold")}");
  }
}
