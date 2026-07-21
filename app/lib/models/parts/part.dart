import '../../emun/parts/part_category.dart';

class Part {
  final String id;
  final String vehicleId;
  final String partNumber;
  final String name;
  final String? brand;
  final PartCategory category;
  final String? description;
  final double? price;
  final String? vendorUrl;
  final String? notes;
  final DateTime createdAt;
  final DateTime updatedAt;

  Part({
    required this.id,
    required this.vehicleId,
    required this.partNumber,
    required this.name,
    this.brand,
    required this.category,
    this.description,
    this.price,
    this.vendorUrl,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Part.fromJson(Map<String, dynamic> json) {
    return Part(
      id: json['id'],
      vehicleId: json['vehicleId'],
      partNumber: json['partNumber'],
      name: json['name'],
      brand: json['brand'],
      category: PartCategory.fromString(json['category']),
      description: json['description'],
      price: json['price'] != null ? (json['price'] as num).toDouble() : null,
      vendorUrl: json['vendorUrl'],
      notes: json['notes'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'vehicleId': vehicleId,
    'partNumber': partNumber,
    'name': name,
    'brand': brand,
    'category': category.name,
    'description': description,
    'price': price,
    'vendorUrl': vendorUrl,
    'notes': notes,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt.toIso8601String(),
  };

  Part copyWith({
    String? id,
    String? vehicleId,
    String? partNumber,
    String? name,
    String? brand,
    PartCategory? category,
    String? description,
    double? price,
    String? vendorUrl,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Part(
      id: id ?? this.id,
      vehicleId: vehicleId ?? this.vehicleId,
      partNumber: partNumber ?? this.partNumber,
      name: name ?? this.name,
      brand: brand ?? this.brand,
      category: category ?? this.category,
      description: description ?? this.description,
      price: price ?? this.price,
      vendorUrl: vendorUrl ?? this.vendorUrl,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
