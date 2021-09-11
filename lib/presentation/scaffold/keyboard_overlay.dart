// import 'dart:ui';
//
// import 'package:cmapp/data/model/userDetail/user_detail.dart';
// import 'package:cmapp/pages/main/main_screen.dart';
// import 'package:cmapp/widgets/components/alert.dart';
// import 'package:cmapp/widgets/components/page_animation.dart';
// import 'package:cmapp/widgets/theme/constants.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:cmapp/provider/theme_provider.dart';
//
// class SearchPolicyScreen extends StatefulWidget {
//   UserDetail _userDetail = new UserDetail();
//
//
//
//   @override
//   _SearchPolicyScreenState createState() => _SearchPolicyScreenState();
// }
//
// class _SearchPolicyScreenState extends State<SearchPolicyScreen> {
//
//   bool isAccount=true;
//   bool isCard=false;
//   void itemChange( int index) {
//     setState(() {
//       if(index==1){
//         isAccount=true;
//         isCard=false;
//       }else if(index==2){
//         isCard=true;
//         isAccount=false;
//       }
//     });
//   }
//
//
//
//   bool isSeen = true;
//   late FocusNode myFocusNode;
//
//   TextEditingController quastionController = new TextEditingController();
//   TextEditingController answerQController = new TextEditingController();
//   TextEditingController passController = new TextEditingController();
//   TextEditingController conPassController = new TextEditingController();
//
//   //Validation
//   String? validatePassword(String value) {
//     final RegExp _passwordRegExp = RegExp(
//       r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
//     );
//     if (value.isEmpty) {
//       return 'Invalid password';
//     } else if (value.length < 8) {
//       return "Password should be between 8-20 characters";
//     } else {
//       if (!_passwordRegExp.hasMatch(value))
//         return 'Use 8-20 characters from at least 2 categories:\nletters, numbers, special characters';
//       else
//         return null;
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     myFocusNode = FocusNode();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     myFocusNode.dispose();
//   }
//
//
//   int selectedValue = 1;
//   bool showText1 = false;
//   bool showText2 = false;
//
//
//   bool isSave = false;
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   late MediaQueryData queryData;
//
//   @override
//   Widget build(BuildContext context) {
//     queryData = MediaQuery.of(context);
//
//     quastionController.value = TextEditingValue(
//         text: 0 == widget._userDetail.mobile
//             ? ''
//             : widget._userDetail.question.toString(),
//         selection: TextSelection.fromPosition(
//             TextPosition(offset: quastionController.text.length)));
//     answerQController.value = TextEditingValue(
//         text: widget._userDetail.answer.toString(),
//         selection: TextSelection.fromPosition(
//             TextPosition(offset: answerQController.text.length)));
//     passController.value = TextEditingValue(
//         text: widget._userDetail.password.toString(),
//         selection: TextSelection.fromPosition(
//             TextPosition(offset: passController.text.length)));
//     conPassController.value = TextEditingValue(
//         text: widget._userDetail.retypePassword.toString(),
//         selection: TextSelection.fromPosition(
//             TextPosition(offset: conPassController.text.length)));
//     Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
//         ? 'DarkTheme'
//         : 'LightTheme';
//
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             //Appbar
//             _appBar(context),
//             //Roundness
//             _roundness(),
//             _createPassword(),
//
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         elevation: 0,
//         color: Colors.white,
//         child: Container(
//           height: 70,
//           child: Container(
//             width: double.infinity,
//             padding: EdgeInsets.symmetric(horizontal: 22),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: MaterialButton(
//                     height: 50,
//                     onPressed: () {
//                       FocusScope.of(context).requestFocus(FocusNode());
//                       print("Validate : " + formKey.currentState!.validate().toString());
//                       if (formKey.currentState!.validate()) {
//                         Navigator.push(context, SlidePageRoute(page: MainScreen()));
//                       }
//
//                     },
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8)),
//                     color: Color(0xFF2A3476),
//                     elevation: 0,
//                     highlightElevation: 0,
//                     child: Container(
//                       child: Text(
//                         "Search",
//                         style: TextStyle(
//                           color: m_fillColor,
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: "regular",
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _createPassword() {
//     return Container(
//       child: SafeArea(
//         child: Scaffold(
//           body: Form(
//             key: formKey,
//             child: Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   //Appbar
//                   _appBar(context),
//                   //Roundness
//                   _roundness(),
//
//                   SizedBox(height: 15,),
//                   //
//
//
//
//
//                   Container(
//                     child: Expanded(
//                       child: Container(
//                         color: Color(0xFFFFFFFF),
//                         padding: const EdgeInsets.all(24.0),
//                         child: Container(
//                           child: ListView(
//                             children: [
//                               Text(
//                                 "Good, Let's Search for",
//                                 style: TextStyle(
//                                   fontSize: 22,
//                                   fontFamily: "regular",
//                                   fontWeight: FontWeight.w300,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               Text(
//                                 "your gender",
//                                 style: TextStyle(
//                                   fontSize: 22,
//                                   fontFamily: "regular",
//                                   fontWeight: FontWeight.w300,
//                                   color: Colors.black,
//                                 ),
//                               ),
//
//                               SizedBox(
//                                 height: 20.0,
//                               ),
//                               //
//                               Container(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//
//                                     //Name
//                                     Text(
//                                       ' Please select your gender',
//                                       style: TextStyle(
//                                         fontSize: 15,
//                                         color: Colors.black,
//                                         fontFamily: "regular",
//                                       ),
//                                     ),
//
//                                     Container(
//                                       padding: const EdgeInsets.all(20.0),
//                                       child: Row(
//                                         children: [
//                                           Expanded(
//                                             child: Container(
//                                               child: Card(
//                                                 elevation: 3,
//                                                 margin: EdgeInsets.zero,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius: BorderRadius.circular(12)
//                                                 ),
//                                                 color: isAccount?Theme.of(context).accentTextTheme.headline1!.color:
//                                                 Theme.of(context).textTheme.headline2!.color,
//                                                 child: InkWell(
//                                                   onTap: (){
//                                                     itemChange( 1);
//                                                   },
//                                                   child: Container(
//                                                     height:100,
//                                                     alignment: Alignment.center,
//                                                     child: Text("Male",
//                                                       style: TextStyle(
//                                                         fontSize: 14,
//                                                         fontFamily: "medium",
//                                                         color: isAccount?Theme.of(context).textTheme.headline2!.color:
//                                                         Theme.of(context).textTheme.headline3!.color,
//                                                       ),),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           //Space
//                                           SizedBox(width: 15,),
//                                           Expanded(
//                                             child: Column(
//                                               children: [
//                                                 Card(
//                                                   elevation: 3,
//                                                   margin: EdgeInsets.zero,
//                                                   shape: RoundedRectangleBorder(
//                                                       borderRadius: BorderRadius.circular(12)
//                                                   ),
//                                                   color: isCard?Theme.of(context).accentTextTheme.headline2!.color:
//                                                   Theme.of(context).textTheme.headline1!.color,
//                                                   child: InkWell(
//                                                     onTap: (){
//                                                       itemChange( 2);
//                                                     },
//                                                     child: Container(
//                                                       height: 100,
//                                                       alignment: Alignment.center,
//                                                       child: Text("Female",
//                                                         style: TextStyle(
//                                                           fontSize: 14,
//                                                           fontFamily: "medium",
//                                                           color: isCard?Theme.of(context).textTheme.headline2!.color:
//                                                           Theme.of(context).textTheme.headline3!.color,
//                                                         ),),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//
//                                     //Space
//
//
//                                   ],
//                                 ),
//                               ),
//
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   isCard? AccountCard2(): AccountCard1(),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//
//
//
//
//   //AppBar
//   _appBar(BuildContext context) {
//     return Container(
//       height: 150,
//       color: Color(0xFF2A3476),
//       padding: EdgeInsets.only(left: 15,top: 15),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           //back btn
//           InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: Image.asset(
//                 "assets/icons/ic_back.png",
//                 scale: 30,
//                 color: Color(0xFFFFFFFF),
//               ),
//             ),
//           ),
//           //title
//           Container(
//             padding: const EdgeInsets.only(top: 40, left: 0),
//             child: Text(
//               "Search by gender",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30.0,
//                 fontFamily: "medium",
//                 fontWeight: FontWeight.w800,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   //
//   _roundness() {
//     return Container(
//       height: 0,
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Positioned.directional(
//             textDirection: Directionality.of(context),
//             top: -20,
//             start: 0,
//             end: 0,
//             child: Container(
//               height: 100,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25),
//                 color: Color(0xFFFFFFFF),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//
//
//
//
//
// }
// class AccountCard1 extends StatefulWidget {
//   @override
//   _AccountCard1State createState() => _AccountCard1State();
// }
//
// class _AccountCard1State extends State<AccountCard1> {
//   @override
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         child: ListView(
//           shrinkWrap: true,
//           children: [
//             //Profile
//             Container(
//               key: formKey,
//               child: Container(  padding: const EdgeInsets.all(24.0),
//                 child: Column(mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//
//                   children: [
//                     //Appbar
//
//
//
//                     //
//                     Text(
//                       'Answer',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.black,
//                         fontFamily: "regular",
//                       ),
//                     ),
//                     SizedBox(
//                       height: 8.0,
//                     ),
//                     TextFormField(
//                       textInputAction: TextInputAction.done,
//                       keyboardType: TextInputType.text,
//
//                       style: TextStyle(color: Colors.black),
//                       decoration: InputDecoration(
//                         isDense: true,
//                         contentPadding: EdgeInsets.only(
//                             left: 14, top: 12, bottom: 12),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8.0),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: Color(0xFFE1E8F7),
//                         hintText: "",
//                       ),
//
//                     ),
//
//
//
//
//                   ],
//                 ),
//               ),
//             ),
//             //Space
//             SizedBox(height: 5,),
//             //
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// //Card
// //Card
// class AccountCard2 extends StatefulWidget {
//   @override
//   _AccountCard2State createState() => _AccountCard2State();
// }
//
// class _AccountCard2State extends State<AccountCard2> {
//
//   Container  card(){
//     return Container(
//     );
//
//
//   }
//   //
//
//   @override
//   Widget build(BuildContext context) {
//     return  Expanded(
//       child: Column(
//         children: [
//           Expanded(
//               child: ListView(
//                 children: [
//                   //Space
//
//                   card(),
//                 ],
//               )),
//
//         ],
//       ),
//     );
//   }
// }