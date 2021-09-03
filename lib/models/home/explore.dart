class Explore{
  String title,imagePath,subtitle;
  Explore(this.title,this.imagePath,this.subtitle);

  factory Explore.fromJson(Map<String,dynamic> data){
    return Explore(data['title'],data["imagePath"],data["subtitle"]);
  }

}