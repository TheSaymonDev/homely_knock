class ReviewsModel {
  String? imgUrl, name, date, ratings, details;

  ReviewsModel(this.imgUrl, this.name, this.date, this.ratings, this.details);

  static List<ReviewsModel> data = [
    ReviewsModel('images/top1.png', 'Jasim Uddin', '15 Jan 2023', '5.0',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
    ReviewsModel('images/top2.png', 'Jhon Smith', '15 Jan 2023', '4.0',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
    ReviewsModel('images/top3.png', 'Barak Uddin', '15 Jan 2023', '3.0',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
    ReviewsModel('images/top4.png', 'Mr. Karun', '15 Jan 2023', '5.0',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
    ReviewsModel('images/top5.png', 'Josef Benjamin', '15 Jan 2023', '3.0',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
    ReviewsModel('images/top1.png', 'Henry Feyol', '15 Jan 2023', '5.0',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.')
  ];
}
