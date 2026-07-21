import '../../emun/attachments/fuel_grade.dart';

class FuelLog {
  final FuelGrade fuelGrade;
  final double miles;
  final double gallons;
  final double price;
  final DateTime date;

  FuelLog({
    required this.fuelGrade,
    required this.miles,
    required this.gallons,
    required this.price,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
    'fuelGrade': fuelGrade.name,
    'miles': miles,
    'gallons': gallons,
    'price': price,
    'date': date,
  };
}
