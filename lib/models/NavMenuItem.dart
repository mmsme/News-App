
class navMenuItem{
  String _name;
  Function _destination;

  navMenuItem(this._name, this._destination);

  Function get destination => _destination;

  String get name => _name;
}