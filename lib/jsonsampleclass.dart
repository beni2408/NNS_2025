class UserData {

  String email;
  String password;

  UserData({ required this.email, required this.password});

  // convert to JSON

  Map<String, dynamic> toJson(){
    return{

      'email' : email,
      'password' : password,

    };
  }
}