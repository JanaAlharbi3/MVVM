import 'package:mvvm_api/models/posts_model.dart';
import 'package:mvvm_api/repositories/posts/posts_repositories.dart';
import 'package:mvvm_api/view_models/post_view_model.dart';

class PostsViewModel{
  final String title="All Posts";
  // so the fetchAllPosts can accept any type of repo
  PostRepository? postRepository;
  PostsViewModel({this.postRepository});

  Future<List<PostViewModel>> fetchAllPosts() async{
  List<PostModel> list=await postRepository!.getAllPosts();
  return list.map((post) => PostViewModel(postModel: post)).toList();
  }
}