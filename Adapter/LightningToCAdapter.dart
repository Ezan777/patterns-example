import "UsbCPhone.dart";
import "LightningPhone.dart";

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