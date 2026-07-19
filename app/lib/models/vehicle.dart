import 'package:spec_s_n_part_s/models/drivetrain.dart';
import 'package:spec_s_n_part_s/models/lube_spec.dart';

class Vehicle {
  final String? vin;
  final String? nickname;
  final int year;
  final String make;
  final String model;
  final String? trim;
  final Drivetrain
  factoryDrivetrain; // The factory specs (immutable, read-only)
  final Drivetrain?
  currentDrivetrain; // The current specs (starts equal to factory, changes if engine is swapped)
  final LubeSpec factoryLubeSpec;
  final LubeSpec? currentLubeSpec;

  Vehicle({
    required this.year,
    required this.make,
    required this.model,
    required this.factoryDrivetrain,
    required this.factoryLubeSpec,
    this.currentDrivetrain,
    this.currentLubeSpec,
    this.vin,
    this.nickname,
    this.trim,
  });

  // copyWith method to allow safely replacing the current specs when a swap happens
  Vehicle copyWith({
    String? nickname,
    Drivetrain? currentDrivetrain,
    LubeSpec? currentLubeSpec,
  }) {
    return Vehicle(
      year: year,
      make: make,
      model: model,
      factoryDrivetrain: factoryDrivetrain,
      factoryLubeSpec: factoryLubeSpec,
      currentLubeSpec: currentLubeSpec ?? this.currentLubeSpec,
      currentDrivetrain: currentDrivetrain ?? this.currentDrivetrain,
      vin: vin,
      nickname: nickname ?? this.nickname,
      trim: trim,
    );
  }
}

//    「—」「—」
//        ^
//     |wwwww|
