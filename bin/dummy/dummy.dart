class Dummy {
  static List<Map> dataList = [
    Person(1, "Dekom", 12).toJson(),
    Person(2, "John", 24).toJson(),
    Person(3, "Doe", 34).toJson(),
    Person(4, "Walter", 23).toJson(),
    Person(5, "Newth", 39).toJson(),
  ];
}

class Person {
  final int id;
  final String name;
  final int age;

  Person(this.id, this.name, this.age);

  Map toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "age": this.age
    };
  }
}