class OrderModel {
  int id;
  String shop;
  String time;
  bool isConfirmed;

  OrderModel(
      {required this.id,
      required this.shop,
      required this.time,
      required this.isConfirmed});
}
