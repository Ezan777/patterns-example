import "UsbCPhone.dart";

class Android implements UsbCPhone {
  String model;

  Android({this.model = "Pixel 7"});

  @override
  void connectC() {
    print("Cable connected to $model");
  }

  @override
  void recharge() {
    connectC();
    print("$model charging...");
  }
}