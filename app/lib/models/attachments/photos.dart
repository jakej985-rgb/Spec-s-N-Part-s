import '../../emun/attachments/photo_type.dart';

class Photo {
  final PhotoType photoType;
  final String path;

  Photo({required this.photoType, required this.path});

  Map<String, dynamic> toJson() => {'photoType': photoType.name, 'path': path};
}
