class User{
String _name;
String _profileImageUrl;
String _username;
String _email;
String _password;
String get profileImageUrl => _profileImageUrl;
String get username => username;
String get email => _email;
String get password => _password;
  set profileImageUrl(String value) {
    _profileImageUrl = value;
  }

  User(this._name){
    this.name = _name;
  _profileImageUrl = null;
}
User.withProfileImageUrl(this._name, this._profileImageUrl);

String get name => _name;

set name(String value) {
    _name = value;
  }
set username(String value) {
    _username = value;
  }
set email(String value) {
    _email = value;
  }
set password(String value) {
    _password = value;
  }
}