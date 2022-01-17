import 'package:homework_2/models/tag_model.dart';
import 'package:homework_2/models/user_model.dart';

class ProductModel{
  UserModel user;
  String title;
  String description;
  String image_url;
  List<TagModel> tags;

  ProductModel(
      {this.user, this.title, this.description, this.image_url, this.tags});
}