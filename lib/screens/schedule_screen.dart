

// import 'package:flutter/material.dart';
// import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
// import 'package:parent_child_checkbox/parent_child_checkbox.dart';
// import 'package:schedule_week/constants/constants.dart';

// class ScheduleScreen extends StatelessWidget {
//   const ScheduleScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       // appBar: NewGradientAppBar(
//       //   elevation: 2,
//       //   title: Text('Set your weekly hours'),
//       //   gradient: LinearGradient(
//       //     colors: [purple, white],
//       //   ),
//       // ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Set your weekly hours',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 ListView.separated(
//                   itemCount: days.length,
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   padding: const EdgeInsets.only(top: 20),
//                   separatorBuilder: (context, index) {
//                     return Divider(
//                       thickness: 0.5,
//                       color: Colors.deepPurple[100],
//                     );
//                   },
//                   itemBuilder: (context, index) {
//                     return ParentChildCheckbox(
//                       parentCheckboxColor: Colors.green,
//                       childrenCheckboxColor: Colors.deepPurple,
//                       parent: Text(
//                         days[index].toString(),
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       children: const [
//                         Text(
//                           'Morning',
//                         ),
//                         Text(
//                           'Afternoon',
//                         ),
//                         Text(
//                           'Evening',
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//                 SizedBox(
//                   height: size.height * 0.02,
//                 ),
//                 SizedBox(
//                   height: size.height * 0.05,
//                   width: size.width * 0.5,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: purple,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(
//                           10,
//                         ),
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: const Text(
//                       'Save',
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
