import 'package:identifier_app/model/images.dart';

class ImageList {
  int questionCount = 0;
  List<ImagesData> imagesList = [
    ImagesData(
        answerOfQns: "Bale",
        imageName: "assets/images/bale.jpg",
        o1: "Bale",
        o2: "Cr7",
        o3: "Salah",
        o4: "Puyol"),
    ImagesData(
        answerOfQns: "Cr7",
        imageName: "assets/images/cr7.jpg",
        o1: "Cr7",
        o2: "Mbappe",
        o3: "Messi",
        o4: "Naymar"),
    ImagesData(
        answerOfQns: "Iniesta",
        imageName: "assets/images/iniesta.jpg",
        o1: "Lukaku",
        o2: "Puyol",
        o3: "Ronaldhinho",
        o4: "Iniesta"),
    ImagesData(
        answerOfQns: "Kane",
        imageName: "assets/images/kane.jpg",
        o1: "Kane",
        o2: "Mbappe",
        o3: "Ronaldhinho",
        o4: "Cr7"),
    ImagesData(
        answerOfQns: "Lukaku",
        imageName: "assets/images/lukaku.jpg",
        o1: "Bale",
        o2: "Salah",
        o3: "Lukaku",
        o4: "Messi"),
    ImagesData(
        answerOfQns: "Mbappe",
        imageName: "assets/images/mbappe.jpg",
        o1: "Kane",
        o2: "Mbappe",
        o3: "Salah",
        o4: "Iniesta"),
    ImagesData(
        answerOfQns: "Messi",
        imageName: "assets/images/messi.jpg",
        o1: "Bale",
        o2: "Kakne",
        o3: "Puyol",
        o4: "Messi"),
    ImagesData(
        answerOfQns: "Naymar",
        imageName: "assets/images/naymar.jpg",
        o1: "Kane",
        o2: "Naymar",
        o3: "Cr7",
        o4: "Messi"),
    ImagesData(
        answerOfQns: "Puyol",
        imageName: "assets/images/puyol.jpg",
        o1: "bale",
        o2: "Mbappe",
        o3: "Puyol",
        o4: "Cr7"),
    ImagesData(
        answerOfQns: "Ronaldhinho",
        imageName: "assets/images/ronaldhinhi.jpg",
        o1: "Kane",
        o2: "Messi",
        o3: "Ronaldhinho",
        o4: "Cr7"),
    ImagesData(
        answerOfQns: "Salah",
        imageName: "assets/images/salah.jpg",
        o1: "Salah",
        o2: "Bale",
        o3: "Iniesta",
        o4: "Lukaku"),
  ];

  bool noNextQns() {
    if (imagesList.length - 2 < questionCount) {
      return true;
    } else {
      return false;
    }
  }

  void nextQns() {
    questionCount++;
  }

  //Get Next Image
  String getNextImage() {
    return imagesList[questionCount].imageName;
  }

  //Get ImagesOptions
  bool checkAnswer(String ans) {
    if (ans == getAnswer()) {
      return true;
    } else {
      return false;
    }
  }

  List getOptions() {
    List<String> listItmBtn = [
      imagesList[questionCount].op1,
      imagesList[questionCount].op2,
      imagesList[questionCount].op3,
      imagesList[questionCount].op4,
    ];
    return listItmBtn;
  }

  String getAnswer() {
    return imagesList[questionCount].answerOfQns;
  }

  void questionReset() {
    questionCount = 0;
  }

  int getTotalQnsNum() {
    return imagesList.length;
  }
}
