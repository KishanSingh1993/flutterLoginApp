class Person {
  final String name;
  final int meetups;
  final String image;

  Person({required this.name, required this.meetups, required this.image});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      meetups: json['meetups'],
      image: json['image'],
    );
  }
}
