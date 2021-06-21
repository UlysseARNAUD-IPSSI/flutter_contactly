class Contact {
  String firstname;
  String lastname;
  String telephone;
  String avatar;

  Contact({
    this.firstname,
    this.lastname,
    this.telephone,
    this.avatar,
  });

  Contact.fromJson(Map<String, dynamic> json)
      : firstname = json['firstname'],
        lastname = json['lastname'],
        telephone = json['telephone'],
        avatar = json['avatar'];

  /*Map<String, dynamic> toJson() => {
        'firstname': firstname,
        'lastname': lastname,
        'telephone': telephone,
        'avatar': avatar,
      };*/
}
