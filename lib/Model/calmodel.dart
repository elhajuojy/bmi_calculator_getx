class CalModel {
  final Gender? geneder;
  final double height;
  final int weghit;
  final int age;
  CalModel(
      {required this.geneder,
      required this.height,
      required this.weghit,
      required this.age});
}

enum Gender { male, famle }
