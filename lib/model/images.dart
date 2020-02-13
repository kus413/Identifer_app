import 'package:identifier_app/model/answer.dart';

class ImagesData extends Answers {
  String answerOfQns;
  String imageName;
  String o1, o2, o3, o4;
  ImagesData(
      {this.answerOfQns, this.imageName, this.o1, this.o2, this.o3, this.o4})
      : super(o1, o2, o3, o4);
}
