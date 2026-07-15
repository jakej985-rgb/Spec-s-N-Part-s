import 'vehicle.dart';

class Garage {
  List<Vehicle> vehicles;
  Vehicle? selectedVehicle;

  Garage({
    required this.vehicles,
    this.selectedVehicle,
  });
}