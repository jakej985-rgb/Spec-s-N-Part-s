import 'package:spec_s_n_part_s/models/drivetrain.dart';

class Vehicle {
  final String? vin;
  final String? nickname;
  final int year;
  final String make;
  final String model;
  final String? trim;

  // The factory specs (immutable, read-only)
  final Drivetrain factoryDrivetrain;

  // The current specs (starts equal to factory, changes if engine is swapped)
  final Drivetrain currentDrivetrain;

  Vehicle({
    required this.year,
    required this.make,
    required this.model,
    required this.factoryDrivetrain,
    required this.currentDrivetrain,
    this.vin,
    this.nickname,
    this.trim,
  });

  // copyWith method to allow safely replacing the current drivetrain when a swap happens
  Vehicle copyWith({String? nickname, Drivetrain? currentDrivetrain}) {
    return Vehicle(
      year: this.year,
      make: this.make,
      model: this.model,
      factoryDrivetrain: this.factoryDrivetrain,
      currentDrivetrain: currentDrivetrain ?? this.currentDrivetrain,
      vin: this.vin,
      nickname: nickname ?? this.nickname,
      trim: this.trim,
    );
  }
}

//    「—」「—」
//        ^
//     |wwwww|
