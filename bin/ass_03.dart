class Car{
  String brand;
  String model;
  int year;
  double milesDriven = 0;
  static int numberOfCars = 0;
  late int carNumber;
  Car(this.brand,this.model,this.year, [this.milesDriven = 0]){
    carNumber = ++numberOfCars;
  }
  String getBrand(){
    return brand;
  }
  String getModel(){
    return model;
  }
  int getYear(){
    return year;
  }
  int getAge(){
    int currentYear = DateTime.now().year;
    return (currentYear - year);
  }
  double getMilesDriven(){
    return milesDriven;
  }
  void drive(double miles){
    milesDriven += miles;
  }
  void printInfo(){
    print("Car $carNumber: $brand $model $year Miles: ${milesDriven.toInt()}, Age: ${getAge()}");
  }
}

void main(){
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