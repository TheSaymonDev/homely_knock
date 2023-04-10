class MostPopularModel {
  String imgUrl, name, title;
  MostPopularModel(this.imgUrl, this.name, this.title);

  static List<MostPopularModel> data = [
    MostPopularModel('images/cleaning.png', 'Cleaning', '100+ Sub categories'),
    MostPopularModel('images/business.png', 'Business', '100+ Sub categories'),
    MostPopularModel(
        'images/construction.png', 'Construction', '100+ Sub categories'),
    MostPopularModel(
        'images/marketing.png', 'Marketing Agency', '100+ Sub categories'),
    MostPopularModel('images/business.png', 'Business', '100+ Sub categories'),
    MostPopularModel(
        'images/photography.png', 'Photography', '100+ Sub categories'),
    MostPopularModel('images/archetecture.png', 'Architecture & Interior',
        '100+ Sub categories'),
    MostPopularModel('images/washing.png', 'Washing', '100+ Sub categories'),
    MostPopularModel(
        'images/marketing.png', 'Marketing Agency', '100+ Sub categories'),
  ];
}
