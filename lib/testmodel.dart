import 'package:isar/isar.dart';

part 'testmodel.g.dart';

@Collection()
class TestModel {
  Id id = Isar.autoIncrement;
  String msg = "";
  int idx = 0;
}
