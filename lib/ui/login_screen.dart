// import 'package:flutter/material.dart';

// import '../widgets/loading/loading_widget.dart';
// import '../widgets/text_field/text_field_controller.dart';
// import '../widgets/text_field/text_field_widget.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _usernameTextController = MyTextFieldController();
//   final _passwordTextController = MyTextFieldController();

//   @override
//   void initState() {
//     super.initState();

//     // _usernameTextController.text =
//     //     LocalStorageService.box.read<String>(LocalStorageService.USERNAME) ??
//     //         '';
//     // _passwordTextController.text =
//     //     LocalStorageService.box.read<String>(LocalStorageService.PASSWORD) ??
//     //         '';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('vnFacePlus'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             MyTextField(
//               labelText: 'Username',
//               controller: _usernameTextController,
//             ),
//             MyTextField(
//               labelText: 'Password',
//               controller: _passwordTextController,
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               child: const Text('Login'),
//               onPressed: () async {
//                 MyLoading.show();

//                 // final username = _usernameTextController.text.trim();
//                 // final password = _passwordTextController.text.trim();

//                 // await LocalStorageService.box
//                 //     .write(LocalStorageService.USERNAME, username);
//                 // await LocalStorageService.box
//                 //     .write(LocalStorageService.PASSWORD, password);

//                 MyLoading.dismiss();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
