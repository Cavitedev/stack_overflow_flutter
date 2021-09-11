import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class History {
  final String id;
  final String date;
  final String timeIn;
  final String timeOut;

  History(this.id, this.date, this.timeIn, this.timeOut);
}

class PageDate extends StatefulWidget {
  const PageDate({Key? key}) : super(key: key);

  @override
  _PageDateState createState() => _PageDateState();
}

class _PageDateState extends State<PageDate> {
  String? id;
  List<History> historyList = [];

  String? _selectedMonth;
  String? currentmonth;
  String getdate = "";

  var monthsList = <String>[
    'January',
    'Febuary',
    'March',
    'April',
    'May',
    'June',
    'July',
    'Augest',
    'September',
    'October',
    'November',
    'December'
  ];

  int? get monthIndex {
    if (_selectedMonth == null) return null;
    return monthsList.indexOf(_selectedMonth!);
  }

  int? get month => monthIndex! + 1;

  void _getDate() {
    final String formattedDateTime =
        DateFormat('MM').format(DateTime.now()).toString();
    _selectedMonth = DateFormat('MMMM').format(DateTime.now());
    setState(() {
      getdate = formattedDateTime;
      print(_selectedMonth);
      print("date  " + getdate);
    });
  }

  void initState() {
    _getDate();
    _getRecord();

    _selectedMonth = DateFormat('MMMM').format(DateTime.now());
    print("current month is ");
    print(monthIndex);
    super.initState();
  }

  Future<List<History>?> _getRecord() async {
    historyList.clear();
    return Future.delayed(
        const Duration(milliseconds: 100),
        () => {
              "data": [
                {"_id": "1", "Date": "2", "TimeIn": "3", "TimeOut": "4"},
                {"_id": "2", "Date": "6", "TimeIn": "3", "TimeOut": "4"},
                {"_id": "3", "Date": "7", "TimeIn": "3", "TimeOut": "4"},
              ]
            } as Map<String, dynamic>).then((map) async {
      List<dynamic> data = map['data']! as List;
      for (var h in data) {
        History history = History(
          h["_id"] as String,
          h["Date"] as String,
          h["TimeIn"] as String,
          h["TimeOut"] as String,
        );
        historyList.add(history);
        id = history.id.toString();
        print("id is ");
        print(id);
      }
      return historyList;
    }).catchError((onerror) {
      print(onerror.toString());
    });
  }

  Widget attendanceHistory(List<History> historyList) => Center(
      child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.blue[500]!, width: 2)),
                      headingRowColor: MaterialStateColor.resolveWith(
                          (states) => Colors.blue[500]!),
                      headingTextStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      showBottomBorder: true,
                      headingRowHeight: 60,
                      horizontalMargin: 30,
                      columnSpacing: 15,
                      dataRowColor: MaterialStateColor.resolveWith(
                          (states) => Colors.blue[50]!),
                      dividerThickness: 4,
                      columns: const <DataColumn>[
                        DataColumn(label: Text("Date")),
                        DataColumn(label: Text("Time in")),
                        DataColumn(label: Text("Time out"), numeric: true),
                        DataColumn(label: Text("   Edit")),
                        //DataColumn(label: Text("Edit"),)

                        // DataColumn(label: Text("Edit"),
                      ],
                      rows: historyList
                          .map((element) => DataRow(cells: <DataCell>[
                                DataCell(Text(element.date)),
                                DataCell(Text(element.timeIn)),
                                DataCell(Text(
                                  element.timeOut,
                                )),
                                DataCell(IconButton(
                                        icon: Icon(
                                          Icons.edit,
                                          color: Colors.blue,
                                        ),
                                        onPressed: () {
                                          // _getSelectedRowInfo(
                                          //     element.id, element.date,
                                          //     element.timeIn,
                                          //     element.timeOut);
                                        })

                                    // showEditIcon: true,
                                    // onTap:(){ _getSelectedRowInfo(element?.id,element?.date,element?.timeIn,element?.timeOut);}),
                                    )
                              ]))
                          .toList())))));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
            child: Text(
              "Attendance history",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(45, 80, 10, 0),
            child: DropdownButton<String>(
              value: _selectedMonth == null ? null : monthsList[monthIndex!],
              items: monthsList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              hint: Text(
                "Please choose a month",
              ),
              onChanged: (String? value) {
                setState(() {
                  print("jk " + _selectedMonth!);
                  if (monthsList.contains(value)) {
                    _selectedMonth = value;
                    print(month);
                    print(_selectedMonth);
                  }
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 150, 0, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FutureBuilder(
                  future: _getRecord(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<History>?> snapshot) {
                    // Check if the data has been received.
                    if (snapshot.hasData) {
                      // Return the widget and provide the received data.
                      return attendanceHistory(snapshot.data!);
                    }
                    //return Center(child: CircularProgressIndicator(),);
                    // print("data");
                    // print(snapshot.data);
                    return Center(
                        heightFactor: 10,
                        child: Text(
                          "Data is not avaliable",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ));
                    //return attendanceHistory(snapshot.data);
                  }),
            ),
          )
        ]));
  }
}
