class Player {
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? image;
  String? email;
  String? phone;

  Player({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.image,
    this.email,
    this.phone,
  });

  Player.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    image = json['image'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['name'] = name;
    data['image'] = image;
    data['email'] = email;
    data['phone'] = phone;
    return data;
  }
}
