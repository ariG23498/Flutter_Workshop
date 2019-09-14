class People {
  String name;
  int age;
  People({this.name, this.age});

  // Constructor overload
  People.fromJson(Map<String, dynamic> json)
      : this.age = json["age"],
        this.name = json["name"];
}
