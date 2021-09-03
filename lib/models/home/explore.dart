class Explore {
  String title, imagePath, subtitle;
  bool isPlaying;

  Explore(this.title, this.imagePath, this.subtitle, [this.isPlaying = false]);

  factory Explore.fromJson(Map<String, dynamic> data) {
    return Explore(data['title'], data["imagePath"], data["subtitle"]);
  }
}
