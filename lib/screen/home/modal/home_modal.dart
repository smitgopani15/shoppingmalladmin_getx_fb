class HomeModal {
  String? name, price, description, offer, category, id, image;

  HomeModal({
    this.name,
    this.price,
    this.description,
    this.offer,
    this.category,
    this.id,
    this.image,
  });
}

class UpdateModal {
  String? name, price, description, offer, category, id, image;

  UpdateModal({
    this.name,
    this.price,
    this.description,
    this.offer,
    this.category,
    this.id,
    this.image,
  });
}

class UserModal {
  String? email, post;

  UserModal({
    this.email,
    this.post,
  });
}
