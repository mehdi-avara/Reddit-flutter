class Community{
  String _name;
  String _imageUrl;
  int _id;
  static int _count=0;

  String get imageUrl => _imageUrl;

  Community(this._name);
  Community.withProfileImageUrl(this._name, this._imageUrl){
    _id=_count++;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
  set imageUrl(String value) {
    _imageUrl = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}