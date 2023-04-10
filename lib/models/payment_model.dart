class PaymentModel {
  String? imgUrl, name;
  PaymentModel({this.imgUrl, this.name});

  static List<PaymentModel> data = [
    PaymentModel(
      imgUrl: 'images/mastercard_img.png',
      name: 'Pay with Mastercard',
    ),
    PaymentModel(
      imgUrl: 'images/paypal_img.png',
      name: 'Pay with Paypal',
    ),
    PaymentModel(
      imgUrl: 'images/american_img.png',
      name: 'Pay with American Ex',
    ),
    PaymentModel(
      imgUrl: 'images/visa_img.png',
      name: 'Pay with Visa Card',
    ),
    PaymentModel(
      imgUrl: 'images/gpay_img.png',
      name: 'Pay with GPay',
    ),
  ];

}
