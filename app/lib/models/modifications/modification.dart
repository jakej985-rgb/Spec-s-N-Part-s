import '../../emun/modifications/mod_category.dart';

class Modification {
  final String id;
  final String vehicleId;
  final ModCategory category;
  final String name;
  final String description;
  final DateTime dateInstalled;
  final double cost;
  final String? notes;
  final bool isBoltOn;
  final DateTime createdAt;
  final DateTime updatedAt;

  Modification({
    required this.id,
    required this.vehicleId,
    required this.category,
    required this.name,
    required this.description,
    required this.dateInstalled,
    required this.cost,
    this.notes,
    this.isBoltOn = true,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Modification.fromJson(Map<String, dynamic> json) {
    return Modification(
      id: json['id'],
      vehicleId: json['vehicleId'],
      category: ModCategory.fromString(json['category']),
      name: json['name'],
      description: json['description'],
      dateInstalled: DateTime.parse(json['dateInstalled']),
      cost: (json['cost'] as num).toDouble(),
      notes: json['notes'],
      isBoltOn: json['isBoltOn'] ?? true,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'vehicleId': vehicleId,
    'category': category.name,
    'name': name,
    'description': description,
    'dateInstalled': dateInstalled.toIso8601String(),
    'cost': cost,
    'notes': notes,
    'isBoltOn': isBoltOn,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt.toIso8601String(),
  };

  Modification copyWith({
    String? id,
    String? vehicleId,
    ModCategory? category,
    String? name,
    String? description,
    DateTime? dateInstalled,
    double? cost,
    String? notes,
    bool? isBoltOn,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Modification(
      id: id ?? this.id,
      vehicleId: vehicleId ?? this.vehicleId,
      category: category ?? this.category,
      name: name ?? this.name,
      description: description ?? this.description,
      dateInstalled: dateInstalled ?? this.dateInstalled,
      cost: cost ?? this.cost,
      notes: notes ?? this.notes,
      isBoltOn: isBoltOn ?? this.isBoltOn,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
