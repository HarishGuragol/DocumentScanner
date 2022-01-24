class UserModel {
  String? uid;
  String? email;

  UserModel({this.uid, this.email});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      // firstName: map['firstName'],
      // secondName: map['secondName'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      // 'firstName': firstName,
      // 'secondName': secondName,
    };
  }
}
