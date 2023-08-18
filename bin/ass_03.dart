// Car class initialization
class Car {
  String brand;
  String model;
  int year;
  double milesDriven = 0;
  int carNumber = 0; // Added property to hold car number

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year) {
    carNumber = ++numberOfCars; // Assigning the value after incrementing
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }

  void printInfo() {
    print("Car $carNumber: $brand $model $year Miles: ${getMilesDriven().toInt()} Age: ${getAge()}");
  }
}


// main function
void main() {
  Car car1 = Car("Toyota", "Camry", 2020);
  car1.drive(10000.0);

  Car car2 = Car("Honda", "Civic", 2018);
  car2.drive(8000.0);

  Car car3 = Car("Ford", "F-150", 2015);
  car3.drive(15000.0);

  car1.printInfo();
  car2.printInfo();
  car3.printInfo();

  print("Total number of cars created: ${Car.numberOfCars}");
}
