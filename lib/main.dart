import 'package:flutter/material.dart';
import 'package:mvvm_api/views/posts/posts_views.dart';


void main() => runApp(App());


class App extends StatelessWidget{
  const App({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:PostsView()

    );
  }
}
