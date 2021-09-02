class Recommendation{
  String text;
  String imagePath;
  Recommendation(this.text,this.imagePath);

  factory Recommendation.fromJson(Map<String,dynamic> data){
    return Recommendation(data['text'], data['imagePath']);
  }

}