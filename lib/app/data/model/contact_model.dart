class Contact {
  String firstname;
  String lastname;
  String pseudo;
  String avatar;

  Contact({
    this.firstname,
    this.lastname,
    this.pseudo,
    this.avatar,
  });

  Contact.fromJson(Map<String, dynamic> json)
      : firstname = json['firstname'],
        lastname = json['lastname'],
        pseudo = json['pseudo'],
        avatar = json['avatar'];

  /*Map<String, dynamic> toJson() => {
        'firstname': firstname,
        'lastname': lastname,
        'pseudo': pseudo,
        'avatar': avatar,
      };*/
}
