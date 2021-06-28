// import 'package:flutter/material.dart';
//
// class _RevisionState extends State<Revision> with TickerProviderStateMixin {
//   //debut code events
//   CalendarController _controller;
//   Map<DateTime, List<dynamic>> _events;
//   List<dynamic> _selectedEvents;
//   TextEditingController _eventController, dateController;
//   SharedPreferences prefs;
//   int status;
//   bool _autovalidate = false;
//
//   int status1 = 0;
//
// //  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final _formKey = GlobalKey<FormState>();
//
//   RevisionApi revisionApi = RevisionApi();
//
//   TextEditingController _Kilometrage_revisionController =
//       TextEditingController();
//
//   TextEditingController _KilometrageController = TextEditingController();
//   TextEditingController _EmplacementController = TextEditingController();
//   TextEditingController _DateController = TextEditingController();
//   /* TextEditingController _repeat_revisionController =
//       TextEditingController(text: "non");*/
//   TextEditingController _revision_titleController = TextEditingController();
//   TextEditingController _revision_agenceController = TextEditingController();
// //  TextEditingController _eventController = TextEditingController();
//
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       getTask1().then((val) => setState(() {
//             _events = val;
//           }));
//       //print( ' ${_events.toString()} ');
//     });
//     super.initState();
//     _controller = CalendarController();
//     _eventController = TextEditingController();
//     _events = {};
//     initializeDateFormatting();
//     _selectedEvents = [];
//     prefsData();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   void _onDaySelected(DateTime day, List events) {
//     // print('CALLBACK: _onDaySelected');
//     setState(() {
//       _selectedEvents = events;
//     });
//   }
//
// @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       minimum: const EdgeInsets.only(top: 20.0),
//       child: Scaffold(
//         backgroundColor: Color(0xFF050127),
//         appBar: AppBar(
//             backgroundColor: Color(0xFF010611),
//             iconTheme: IconThemeData(color: Colors.white),
//             automaticallyImplyLeading: true,
//             centerTitle: true,
//             title: Text(
//               widget.title = 'Révision',
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//               //textHeightBehavior: ,
//             ),
//             elevation: 0.0,
//             leading: GestureDetector(
//               onTap: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) => SideBar()));
//               },
//               child: Icon(CommunityMaterialIcons.segment),
//             ),
//             actions: [
//               Icon(
//                 Icons.search, /*color: Colors.black87*/
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//             ]),
//         body: SingleChildScrollView(
//             child: Container(
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(left: 10),
//                     height: size.height * 0.05,
//                     width: size.width * 1,
//                     decoration:
//                         BoxDecoration(color: Colors.white.withOpacity(0.2)),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           DateFormat("dd-MM-yyyy       hh:mm:ss")
//                               .format(DateTime.now()),
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               letterSpacing: 1),
//                         ),
//                         IconButton(
//                             icon: Icon(
//                               CommunityMaterialIcons.calendar_plus,
//                               color: KYellow,
//                             ),
//                             onPressed: () {
//                               _showAddDialog();
//                             })
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     child: (_buildTableCalendarWithBuilders()),
//                   ),
//                 ],
//               ),
//               _buildEventList(),
//             ],
//           ),
//         )),
//       ),
//     );
//   }
// _showAddDialog() async {
//     await showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//               backgroundColor: Colors.white,
//               title: Text("Ajouter un évènement"),
//               content: StatefulBuilder(builder: (
//                 BuildContext context,
//                 StateSetter setState,
//               ) {
//                 return SingleChildScrollView(
//                   //
//                   child: Form(
//                     key: _formKey,
//                     autovalidate: _autovalidate,
//                     child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(children: [
//                             Expanded(
//                                 child: Padding(
//                               padding: const EdgeInsets.only(right: 10),
//                               child: DropdownButtonFormField(
//                                 decoration: InputDecoration(
//                                   hoverColor: Colors.white,
//                                   /* contentPadding: EdgeInsets.only(
//                                       left: 10, right: 15, top: 15),*/
//                                   labelText: 'Type',
//                                   alignLabelWithHint: true,
//                                   labelStyle: TextStyle(
//                                     color: kPrimaryColor,
//                                   ),
//                                   enabledBorder: UnderlineInputBorder(
//                                     borderSide: BorderSide(color: Colors.grey),
//                                   ),
//                                 ),
//                                 dropdownColor: Colors.white,
//                                 value: status,
//                                 items: <DropdownMenuItem>[
//                                   DropdownMenuItem(
//                                     // value: 'videnge',
//                                     value: 0,
//
//                                     child: InkWell(
//                                       child: Text('Vidange'),
//                                       hoverColor: Colors.indigo,
//                                     ),
//                                   ),
//                                   DropdownMenuItem(
//                                     // value: 'visite technique',
//                                     value: 1,
//
//                                     child: Text('Visite technique'),
//                                   ),
//                                   DropdownMenuItem(
//                                     //  value: 'assurance véhicule',
//                                     value: 2,
//
//                                     child: Text('Assurance véhicule'),
//                                   ),
//                                   DropdownMenuItem(
//                                     // value: 'autre',
//                                     value: 3,
//
//                                     child: Text('Autre'),
//                                   ),
//                                 ],
//                                 onChanged: (value) {
//                                   setState(() {
//                                     status = value;
//                                   });
//                                 },
//                               ),
//                             )),
//                           ]),
//                           if (status == 0) vidangeDropdown(),
//                           if (status == 1) visiTechniqueDropdown(),
//                           if (status == 2) assuranceDropdown(),
//                           if (status == 3) autresDropdown(),
//
//  actions: <Widget>[
//                 TextButton(
//                   child: Text(
//                     "Enregistrer",
//                     style: TextStyle(
//                         color: Colors.red, fontWeight: FontWeight.bold),
//                   ),
//                   onPressed: () {
//                     if (_eventController.text.isEmpty == null) return;
//                     setState(() {
//                       if (_events[_controller.selectedDay] != null) {
//                         _events[_controller.selectedDay]
//                             .add(_eventController.text);
//                       } else {
//                         _events[_controller.selectedDay] = [
//                           _eventController.text
//                         ];
//                       }
//                       prefs.setString(
//                           "events", json.encode(encodeMap(_events)));
//                       _eventController.clear();
//                       setRevision();
//
//                       //   Navigator.of(context).pop();
//                       //   Navigator.pop(context);
//                     });
//                     //  Navigator.of(context).pop();
//                   },
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: const Text('Retour'),
//                 ),
//               ],
//             ));
//     setState(() {
//       _selectedEvents = _events[_controller.selectedDay];
//     });
//   }
//     Widget _buildEventList() {
//         return Column(children: [
//           ..._selectedEvents.map(
//             (event) => Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                   child: Padding(
//                       padding: EdgeInsets.all(20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Icon(
//                                 CommunityMaterialIcons.oil,
//                                 color: KYellow,
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 event,
//                                 style: TextStyle(
//                                     color: KYellow,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                               'Votre véhicule atteint 45 000 Km un vidange est important'),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             'Dernier visite effectuée le 23/12/2020',
//                             style: TextStyle(color: Colors.indigo[400]),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               IconButton(
//                                 icon: Icon(
//                                   CommunityMaterialIcons.file_clock,
//                                   size: 35,
//                                   color: KYellow,
//                                 ),
//                                 onPressed: () {},
//                               ),
//                               SizedBox(
//                                 width: 30,
//                               ),
//                               IconButton(
//                                 icon: Icon(
//                                   CommunityMaterialIcons.content_save_edit_outline,
//                                   size: 35,
//                                   color: KYellow,
//                                 ),
//                                 onPressed: () {
//                                   if (event == 'Vidange') {
//                                     showDialog(
//                                       context: context,
//                                       builder: (BuildContext context) =>
//                                           _buildUpdateVidengeEvent(context),
//                                     );
//                                   } else
//                                     showDialog(
//                                       context: context,
//                                       builder: (BuildContext context) =>
//                                           _buildUpdateEvent(context),
//                                     );
//                                 },
//                               )
//                             ],
//                           )
//                         ],
//                       ))),
//             ),
//           )
//         ]);
//       };
//
//       Future<Map<DateTime, List<Datum>>> getTask1() async {
//         List<Datum> eventList = await revisionApi.getAllRevision();
//         return eventListToMap(eventList);
//       }
//
//       Map<DateTime,List<Datum>> eventsListToMap(List<Datum> event){
//         for (int i = 0; i < event.length; i++) {
//                   Map<DateTime, List<Datum> mapFetch = {};
//
//           var createTime = DateTime(event[i].revisionDate.year,
//               event[i].revisionDate.month, event[i].revisionDate.day);
//           var original = mapFetch[createTime];
//           if (original == null) {
//             print("null");
//             mapFetch[createTime] = [event[i]]; //This line
//           } else {
//             //  print(event[i].revisionLocation);
//             mapFetch[createTime] = List.from(original)
//               ..add(event[i].revisionLocation);
//           }
//         }
//         print(mapFetch);
//         return mapFetch;
//   }
//   }
//
//
//     }