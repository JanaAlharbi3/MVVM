import 'package:mvvm_api/models/posts_model.dart';
import 'package:mvvm_api/repositories/posts/posts_repositories.dart';
import 'package:dio/dio.dart';
class PostsAPI extends PostRepository{
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts=[];
        try{
      var respnse= 
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
      var list = respnse.data as List;
      //loop throw the response to store each object in the list
      posts=list.map((post)=>PostModel.fromJson(post)).toList() ;
      print(respnse);

    }catch(exception){
      print(exception);
    }
    print(posts);
    return posts;

  }

  @override
  Future<PostModel> getPostById(int id) {
    //TODO: implement getPostsById
    throw UnimplementedError();

  }



}