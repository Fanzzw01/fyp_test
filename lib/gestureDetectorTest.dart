// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/gesture_detector.dart';
//
// class gestureDetectorTest extends StatelessWidget{
//   final String title;
//
//   gestureDetectorTest(this.title);
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar:  AppBar(
//         title: Text(this.title),
//       ),
//       body: Center(
//         child: GestureDetector(
//           child: Container(
//             padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Theme.of(context).buttonColor,
//               borderRadius: BorderRadius.circular(5),
//             ),
//             child: Text("我是一个自定义按钮"),
//           ),
//           onTap: (){
//             print('你已经点打我了');
//           },
//         )
//       ),
//     );
//   }
// }