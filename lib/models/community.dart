class Community{
  String _name;
  String _imageUrl;

  String get imageUrl => _imageUrl;

  Community(this._name);

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}