class Post {
  String name;
  int active;

  Post({required this.name, required this.active});

  factory Post.fromJson(Map<String, dynamic> json) =>
      Post(name: json["name"], active: json["active"]);

  Map<String, dynamic> toJson() => {"name": name, "active": active};
}
