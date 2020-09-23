import 'dart:math';

class SubCategory {
  String name;
  int numberDoctor;
  String imagePath;

  SubCategory({this.name, this.numberDoctor, this.imagePath});

  static List<SubCategory> get generateSubCategories {
    return List.generate(20, (index) {
      int subNameIndex = Random().nextInt(2);
      int numberOfDoctor = Random().nextInt(50) + 1;
      int imageIndex = Random().nextInt(3);
      return SubCategory(
        name: nameSubCategories[subNameIndex],
        numberDoctor: numberOfDoctor,
        imagePath: imageSubCategories[imageIndex],
      );
    });
  }
}

final nameCategories = ["Adults", "Children", "Women", "Men"];
final nameSubCategories = ["Cough & Cold", "Heart Specialist"];
final imageSubCategories = ['assets/images/cough.jpg','assets/images/cough.jpg', 'assets/images/cough.jpg'];
//Thay thành ảnh của mình.