// Our abstract factory
abstract class UIFactory {
  Button buildButton();
  Slider buildSlider();
}

abstract class Button {
  void show();
}

abstract class Slider {
  void slide();
}

class WinButton implements Button {
  @override
  void show() {
    print("This is a windows button.");
  }
}

class MacButton implements Button {
  @override
  void show() {
    print("This is a macOS button.");
  }
}

class WinSlider implements Slider {
  @override
  void slide() {
    print("This is a windows slider.");
  }
}

class MacSlider implements Slider {
  @override
  void slide() {
    print("This is a macOS slider.");
  }
}

class WinFactory implements UIFactory {
  @override
  Button buildButton() {
    return new WinButton();
  }

  @override
  Slider buildSlider() {
    return new WinSlider();
  }
}

class MacFactory implements UIFactory {
  @override
  Button buildButton() {
    return new MacButton();
  }

  @override
  Slider buildSlider() {
    return new MacSlider();
  }
}

void main() {
  WinFactory win_factory = new WinFactory();
  MacFactory mac_factory = new MacFactory();

  late Button button;
  late Slider slider;

  String os_type = "Windows";

  if(os_type == "Windows") {
    button = win_factory.buildButton();
    slider = win_factory.buildSlider();
  } else if (os_type == "Mac") {
    button = mac_factory.buildButton();
    slider = mac_factory.buildSlider();
  }

  button.show();
  slider.slide();
}