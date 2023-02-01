import "LightningPhone.dart";

class IPhone implements LightningPhone {
  String model;

  IPhone({this.model = "IphoneX"});

  @override
  void recharge() {
    connectLightning();
    print("$model charging...");
  }

  @override
  void connectLightning() {
    print("Cable connected to $model");
  }
}