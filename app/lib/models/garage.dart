import 'vehicle.dart';

class Garage {
  List<Vehicle> vehicles;
  Vehicle? selectedVehicle;

  Garage({required this.vehicles, this.selectedVehicle});

  void addVehicle(Vehicle vehicle) {
    vehicles.add(vehicle);
    selectedVehicle ??= vehicle; //If null set vehicle to the new vehicle
  }

  void removeVehicle(Vehicle vehicle) {
    vehicles.remove(vehicle);
    if (selectedVehicle == vehicle) {
      selectedVehicle =
          null; //If the same vehicle is removed set selectedVehicle to null
    }
  }

  void selectVehicle(Vehicle vehicle) {
    selectedVehicle = vehicle; //Set the selected vehicle
  }

  Vehicle? getVehicle(int index) => (index < 0 || index >= vehicles.length)
      ? null
      : vehicles[index]; //Return the vehicle at the specified index

  int get vehicleCount => vehicles.length; //Return the number of vehicles
}
