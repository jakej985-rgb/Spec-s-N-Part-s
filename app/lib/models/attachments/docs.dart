import '../../emun/attachments/doc_type.dart';

class Doc {
  final DocType docType;
  final String path;

  Doc({required this.docType, required this.path});

  Map<String, dynamic> toJson() => {'docType': docType.name, 'path': path};
}
