class User{
String _name;
String _profileImageUrl;

User(this._name){
  _profileImageUrl = null;
}
User.withProfileImageUrl(this._name, this._profileImageUrl);

String get name => _name;

set name(String value) {
    _name = value;
  }
}