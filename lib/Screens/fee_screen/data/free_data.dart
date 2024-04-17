class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List<FeeData> fee=[
  FeeData('98665','December','8 Dec 2024','Pending', '600৳','PAY NOW'),
  FeeData('98664','November','8 Nov 2024','Paid', '980৳','DOWNLOAD'),
  FeeData('98663','September','8 Sep 2024','Paid', '1080৳','DOWNLOAD'),
];