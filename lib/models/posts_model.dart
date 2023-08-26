class PostModel{
  int? id;
  int? userId;
  String? title;
  String? booody;

    PostModel({this.id,this.userId,this.title,this.booody});
    //because the returnd is json as <key,value> the key is written in the api response that is why i know that it is a string and i wrote them but the value is dynamic every object returned will have same key but diferent value
    PostModel.fromJson(Map<String,dynamic> json){
      id=json['id'];
      userId=json['userId'];
      title=json['title'];
      booody=json['body'];

    }

    Map<String,dynamic> toJson(){
      return {
        "id":id,
        "userId":userId,
        "title":title,
        "body":booody
  
      };

    }

}