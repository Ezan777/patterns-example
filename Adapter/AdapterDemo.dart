abstract class LightningPhone {
  void recharge();
  void connectLightning();
}

abstract class UsbCPhone {
  void recharge();
  void connectC();
}

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

class LightningToCAdapter implements UsbCPhone {
  LightningPhone? phone;
  late bool connected;

  LightningToCAdapter({this.phone}) {
    connected = phone != null;
  }

  @override
  void connectC() {
    if(connected) {
      print("Port adapter for Usb C cable inserted");
      phone!.connectLightning();
    }
  }

  @override
  void recharge() {
    connectC();
    print("Charging...");
  }
}

void rechargeUsbC(UsbCPhone phone) {
  phone.recharge();
}

void rechargeLightning(LightningPhone phone) {
  phone.recharge();
}

void main() {
  IPhone iphone14 = new IPhone(model: "IPhone 14");
  Android android = new Android();
  LightningToCAdapter iphoneXAdapter = new LightningToCAdapter(phone: new IPhone());

  print("Charging Iphone 14 with lightning cable");
  rechargeLightning(iphone14);
  print("Charging Pixel 7 with usb c cable");
  rechargeUsbC(android);
  print("Charging Iphone X with usb c cable");
  rechargeUsbC(iphoneXAdapter);
}