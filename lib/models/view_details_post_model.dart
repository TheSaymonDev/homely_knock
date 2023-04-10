class ViewDetailsPostModel{
  String name, rating, title;
  ViewDetailsPostModel(this.name, this.rating, this.title);
  
  static List<ViewDetailsPostModel> data=[
    ViewDetailsPostModel('HBO Work', '4.9 (100)', 'Total 500 work complete'),
    ViewDetailsPostModel('Jhon Bhark', '4.9 (100)', 'Total 450 work complete'),
    ViewDetailsPostModel('Mr. Clean', '4.9 (100)', 'Total 600 work complete'),
  ];
}