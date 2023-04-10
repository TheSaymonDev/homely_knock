class CompletePostModel{
  String? imgUrl, name, title;
  CompletePostModel(this.imgUrl, this.name, this.title);

  static List<CompletePostModel> data=[
    CompletePostModel('images/design.png', 'Designing My New Website', '20 Company Request'),
    CompletePostModel('images/pphoto.png', 'Want to Next Project photographer', '20 Company Request'),
    CompletePostModel('images/garden.png', 'Weeding Photographer', '20 Company Request'),
  ];
}