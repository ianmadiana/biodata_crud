import 'package:uuid/uuid.dart';

const uuid = Uuid();

class BiodataModel {
  BiodataModel(
      {required this.name,
      required this.age,
      required this.address,
      required this.telpNumber})
      : id = uuid.v4();
  final String id;
  final String name;
  final String age;
  final String address;
  final int telpNumber;
}
