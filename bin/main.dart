//Task number 1

class Book {
  String title;
  String author;
  double price;

  Book({required this.title, required this.author, required this.price});

  double discountPrice(double discountPercent) {
    double discountAmount = price * (discountPercent / 100);
    price = price - discountAmount;
    return price;
  }

  void BooksDetails() {
    print(
      "Book Name is:'${title}'.  author name is:${author}  and book price is ${price} ",
    );
  }
}

//Task Number 2 :

class Employee {
  String name;
  double Salary;

  Employee(this.name, this.Salary);
  displayInfo() {
    print('Employee name is: ${name} and salary is:$Salary');
  }
}

class Manager extends Employee {
  String department;

  Manager(String name, this.department, double salary) : super(name, salary);
  displayInfo() {
    print(
      'Employee name is: ${name} and salary is:$Salary. Department name is: $department',
    );
  }
}

class Developer extends Employee {
  String programingLanguage;

  Developer(String name, double salary, this.programingLanguage)
    : super(name, salary);
  displayInfo() {
    print(
      'Employee name is: ${name} and salary is:$Salary .Programming Language: $programingLanguage',
    );
  }
}

//Task Number : 3

abstract class Appliance {
  void turnOn();
  void turnOff();
  void exercise() {
    print('noting to do');
  }
}

class Fan extends Appliance {
  @override
  void turnOff() {
    print('Now fan is stoped ');
  }

  @override
  void turnOn() {
    print("Fan is now running");
  }
}

class Light extends Appliance {
  @override
  void turnOff() {
    print("Light is switched Off");
  }

  @override
  void turnOn() {
    print("Light is switched on");
  }
}

//Main function
void main() {
  print("___________________________________");
  //Task Number 1
  Book Naruto = Book(title: "Naruto", author: "nasim", price: 100);
  Book Heroic = Book(title: "Power Ranger", author: "tomus lee", price: 330);
  Heroic.BooksDetails();
  Naruto.discountPrice(10);
  Naruto.BooksDetails();

  print("___________________________________");
  //Task Number 2
  Employee naism = Employee('nasim', 34000);
  Manager jahid = Manager('Jahid', 'CSE', 65000);
  Developer masud = Developer("masus", 50000, "Java Script");
  naism.displayInfo();
  jahid.displayInfo();
  masud.displayInfo();
  print("___________________________________");
  //Task Number 3
  Fan fan1 = Fan();
  fan1.turnOn();
  fan1.turnOff();

  Light light1 = Light();
  light1.turnOff();
  light1.turnOn();
}
