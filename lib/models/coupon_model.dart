class CouponModel {
  int id;
  String name;
  int days;
  bool isActive;

  CouponModel(
      {required this.id,
      required this.days,
      required this.name,
      required this.isActive});
}
