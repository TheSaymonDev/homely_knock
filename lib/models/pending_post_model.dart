class PendingPostModel{
  String? imgUrl, name, title;
  PendingPostModel(this.imgUrl, this.name, this.title);
  
  static List<PendingPostModel> data=[
    PendingPostModel('images/commercial.png', 'Commercial cleaning by Expertise', '20 Company Request'),
    PendingPostModel('images/design.png', 'Design My Home', '20 Company Request'),
    PendingPostModel('images/garden2.png', 'I want to Cleaning My Garden', '20 Company Request'),
  ];
}