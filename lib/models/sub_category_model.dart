class SubCategoryModel{
  String? imgUrl,name,title;
  SubCategoryModel(this.imgUrl, this.name, this.title);

  static List<SubCategoryModel> data=[
    SubCategoryModel('images/house_cleaning.png', 'House Cleaning', '100+ Company Work'),
    SubCategoryModel('images/web_design.png', 'Web Design', '120+ Company Work'),
    SubCategoryModel('images/counselling.png', 'Counselling', '300+ Company Work'),
    SubCategoryModel('images/personal_trainer.png', 'Personal Trainers', '450+ Company Work'),
    SubCategoryModel('images/yoga_trainers.png', 'Yoga Trainers', '600+ Company Work'),
    SubCategoryModel('images/accountant.png', 'Accountants', '480+ Company Work'),
    SubCategoryModel('images/house_cleaning.png', 'House Cleaning', '100+ Company Work'),
    SubCategoryModel('images/web_design.png', 'Web Design', '120+ Company Work'),
    SubCategoryModel('images/counselling.png', 'Counselling', '300+ Company Work'),
    SubCategoryModel('images/personal_trainer.png', 'Personal Trainers', '450+ Company Work'),
    SubCategoryModel('images/yoga_trainers.png', 'Yoga Trainers', '600+ Company Work'),
    SubCategoryModel('images/accountant.png', 'Accountants', '480+ Company Work'),
  ];
}