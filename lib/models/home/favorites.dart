class Favorites{
  String text,iconPath;
  Favorites(this.text,this.iconPath);
  factory Favorites.fromJson(Map<String,dynamic> data){
    return Favorites(data['text'], data['iconPath']);
  }
}