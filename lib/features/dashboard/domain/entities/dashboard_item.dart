class DashboardItem {
  String? id;
  String title;
  String commodity;
  int quantity;
  int amount;
  String? remarks;
  DateTime date;
  int total;
  DashboardItem(
      {required this.amount,
      required this.commodity,
      required this.quantity,
      required this.date,
      required this.total,
      this.id,
      this.remarks,
      this.title = ""});
}
