import 'package:spec_s_n_part_s/models/powertrain/powertrain.dart';
import 'package:spec_s_n_part_s/models/lube_spec.dart';

class Vehicle {
  final String? vin;
  final String? nickname;
  final int year;
  final String make;
  final String model;
  final String? trim;
  final Powertrain
  factoryPowertrain; // The factory specs (immutable, read-only)
  final Powertrain?
  currentPowertrain; // The current specs (starts equal to factory, changes if engine is swapped)
  final LubeSpec factoryLubeSpec;
  final LubeSpec? currentLubeSpec;

  Vehicle({
    required this.year,
    required this.make,
    required this.model,
    required this.factoryPowertrain,
    required this.factoryLubeSpec,
    this.currentPowertrain,
    this.currentLubeSpec,
    this.vin,
    this.nickname,
    this.trim,
  });

  // copyWith method to allow safely replacing the current specs when a swap happens
  Vehicle copyWith({
    String? nickname,
    Powertrain? currentPowertrain,
    LubeSpec? currentLubeSpec,
  }) {
    return Vehicle(
      year: year,
      make: make,
      model: model,
      factoryPowertrain: factoryPowertrain,
      factoryLubeSpec: factoryLubeSpec,
      currentLubeSpec: currentLubeSpec ?? this.currentLubeSpec,
      currentPowertrain: currentPowertrain ?? this.currentPowertrain,
      vin: vin,
      nickname: nickname ?? this.nickname,
      trim: trim,
    );
  }
}

//    「—」「—」
//        ^
//     |wwwww|
