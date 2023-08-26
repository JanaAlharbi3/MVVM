import 'package:mvvm_api/models/posts_model.dart';

abstract class PostRepository{
  //this method to bring data from api or database etc...
  //each repository such as api or database will have differnt class and will implement this method in a differnt way 
  Future<List<PostModel>> getAllPosts();
  Future<PostModel> getPostById(int id);

}