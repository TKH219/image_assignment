// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:owwn_coding_challenge/features/authentication/controller/auth_controller.dart';
// import 'package:owwn_coding_challenge/features/get_list_user/page/get_list_photos_screen.dart';
//
// class AuthScreen extends StatefulWidget {
//   @override
//   AuthScreenState createState() => AuthScreenState();
// }
//
// class AuthScreenState extends State<AuthScreen> {
//   late AuthController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = Get.find<AuthController>();
//   }
//
//   Future<void> onTapButton() async {
//     await _controller.getAccessToken();
//     Get.to(() => GetListUserScreen(), arguments: _controller.authModel.value.accessToken);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async => false,
//       child: GetBuilder<AuthController>(
//         builder: (_) => Container(
//           color: Colors.black,
//           alignment: Alignment.center,
//           child: centerButton(),
//         ),
//       ),
//     );
//   }
//
//   Widget centerButton() {
//     return Material(
//       elevation: 4.0,
//       borderRadius: BorderRadius.circular(68),
//       child: InkWell(
//         onTap: onTapButton,
//         borderRadius: BorderRadius.circular(68),
//         child: Container(
//           width: 136,
//           height: 136,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(68),
//           ),
//           alignment: Alignment.center,
//           child: const Text(
//             'Press to start',
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.black,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
