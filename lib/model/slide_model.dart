
class SlideModel {
  final String title;
  final String urlImage;
  final String description;

  SlideModel(
      {required this.title, required this.urlImage, required this.description});
}
  final slideList = [
    SlideModel(title: 'Manage money efficiently with my \n Village Manager', urlImage: 'assets/images/logoMM.jpg', description: 'First: sign in to access your data on all your devices.'),
    SlideModel(title: 'title', urlImage: 'assets/images/image1.jpg', description: 'Manager your personal finance and achieve your financial goals'),
    SlideModel(title: 'title', urlImage: 'assets/images/image2.jpg', description: 'Keep track of every penny with in-depth reports'),
  ];
