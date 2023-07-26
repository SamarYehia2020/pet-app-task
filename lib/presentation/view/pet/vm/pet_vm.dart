import 'package:pit_app/data/model/pet/pet_model.dart';

class PetVM {
  final List<PetModel> petList = [
    PetModel(
      petCategory: 'Dog',
      petType: 'Golden',
      petLoveCount: 20,
      petPic: 'assets/images/1.jfif',
    ),
    PetModel(
      petCategory: 'Lablador',
      petType: 'Golden',
      petLoveCount: 18,
      petPic: 'assets/images/2.jfif',
    ),
    PetModel(
      petCategory: 'Dog',
      petType: 'Cardigan',
      petLoveCount: 12,
      petPic: 'assets/images/3.jfif',
    ),
    PetModel(
      petCategory: 'Cat',
      petType: 'Street Cat',
      petLoveCount: 17,
      petPic: 'assets/images/4.jfif',
    ),
    PetModel(
      petCategory: 'Cat',
      petType: 'White Cat',
      petLoveCount: 19,
      petPic: 'assets/images/5.jfif',
    ),
    PetModel(
      petCategory: 'Cat',
      petType: 'Kitten',
      petLoveCount: 18,
      petPic: 'assets/images/6.jfif',
    ),
    PetModel(
      petCategory: 'Bird',
      petType: 'House Bird',
      petLoveCount: 15,
      petPic: 'assets/images/7.jfif',
    ),
    PetModel(
      petCategory: 'Bird',
      petType: 'Parrot',
      petLoveCount: 14,
      petPic: 'assets/images/8.jfif',
    ),
    PetModel(
      petCategory: 'Bird',
      petType: 'Pink Bird',
      petLoveCount: 15,
      petPic: 'assets/images/9.png',
    ),
    PetModel(
      petCategory: 'Bird',
      petType: 'Talking Parrot',
      petLoveCount: 17,
      petPic: 'assets/images/9.png',
    ),
    PetModel(
      petCategory: 'Rat',
      petType: 'Hamster',
      petLoveCount: 9,
      petPic: 'assets/images/10.jfif',
    ),
    PetModel(
      petCategory: 'Rat',
      petType: 'Brown Rabbit',
      petLoveCount: 16,
      petPic: 'assets/images/11.jfif',
    ),
    PetModel(
      petCategory: 'Rabbit',
      petType: 'Gray Rabbit',
      petLoveCount: 17,
      petPic: 'assets/images/12.jfif',
    ),
  ];

  dataLength() {
    return petList.length;
  }

  getCategory(int index) {
    return petList[index].petCategory;
  }

  getType(int index) {
    return petList[index].petType;
  }

  getLoveCount(int index) {
    return petList[index].petLoveCount;
  }

  getPic(int index) {
    return petList[index].petPic;
  }
}
