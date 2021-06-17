class DartClass{

  final int _id;
  DateTime _date;

  DartClass(this._id, this._date,);

  int get id => _id;

  void addYear(){
    _date = _date.add(Duration(days: 1));
  }

  @override
  String toString() {
    return 'DartClass{_id: $_id, date: $_date}';
  }
}

