import "IPhone.dart";
import "Android.dart";
import "LightningToCAdapter.dart";
import "UsbCPhone.dart";
import "LightningPhone.dart";

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