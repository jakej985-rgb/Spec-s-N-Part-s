class ServiceSchedule {
  final String id;
  final String vehicleId;
  final String serviceType;
  final int? intervalMonths;
  final int? intervalMiles;
  final String? description;
  final bool isEssential;

  ServiceSchedule({
    required this.id,
    required this.vehicleId,
    required this.serviceType,
    this.intervalMonths,
    this.intervalMiles,
    this.description,
    this.isEssential = true,
  });

  factory ServiceSchedule.fromJson(Map<String, dynamic> json) {
    return ServiceSchedule(
      id: json['id'],
      vehicleId: json['vehicleId'],
      serviceType: json['serviceType'],
      intervalMonths: json['intervalMonths'],
      intervalMiles: json['intervalMiles'],
      description: json['description'],
      isEssential: json['isEssential'] ?? true,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'vehicleId': vehicleId,
    'serviceType': serviceType,
    'intervalMonths': intervalMonths,
    'intervalMiles': intervalMiles,
    'description': description,
    'isEssential': isEssential,
  };

  ServiceSchedule copyWith({
    String? id,
    String? vehicleId,
    String? serviceType,
    int? intervalMonths,
    int? intervalMiles,
    String? description,
    bool? isEssential,
  }) {
    return ServiceSchedule(
      id: id ?? this.id,
      vehicleId: vehicleId ?? this.vehicleId,
      serviceType: serviceType ?? this.serviceType,
      intervalMonths: intervalMonths ?? this.intervalMonths,
      intervalMiles: intervalMiles ?? this.intervalMiles,
      description: description ?? this.description,
      isEssential: isEssential ?? this.isEssential,
    );
  }
}
