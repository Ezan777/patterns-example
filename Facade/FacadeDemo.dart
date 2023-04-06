class Gpu {
  String turnOn() {
    return "Gpu turned on";
  }

  String heat() {
    return "Gpu temp = 50°";
  }
}

class Cpu {
  String turnOn() {
    return "Cpu turned on";
  }

  String heat() {
    return "Cpu temp = 45°";
  }
}

// This is our facade
class Computer {
  Gpu gpu;
  Cpu cpu;

  Computer(this.gpu, this.cpu);

  String turnOn() {
    return gpu.turnOn() + " & " + cpu.turnOn();
  }

  String heat() {
    return gpu.heat() + " & " + cpu.heat();
  }
}

void main() {
  Computer my_pc = new Computer(new Gpu(), new Cpu());

  print(my_pc.turnOn());
  print(my_pc.heat());
}