class Vehicle {
  String? vin;
  String? nickname;
  int year;
  String make;
  String model;
  String? trim;

  Vehicle({
    required this.year,
    required this.make,
    required this.model,
    this.vin,
    this.nickname,
    this.trim,
  });
}
