import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class User {
  final String username;
  final String password;
  final String name;
  final String email;

  User(this.username, this.password, this.name, this.email);
}

final List<User> mockUsers = [
  User('m1', '123', 'Sibin Kumar', 'sibin@example.com'),
  User('m2', '12345', 'Prajosh Dev', 'prajosh@example.com'),
];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(home: LoginPage());
// }

// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final userCtrl = TextEditingController();
//   final passCtrl = TextEditingController();
//   User? loggedInUser;

//   void checkLogin() {
//     final username = userCtrl.text;
//     final password = passCtrl.text;

//     final user = mockUsers.firstWhere(
//       (u) => u.username == username && u.password == password,
//       orElse: () => User('', '', '', ''),

//     );

//     setState(() => loggedInUser = user);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Login')),
//       body: loggedInUser == null ? buildLoginForm() : buildProfile(),
//     );
//   }

//   // Widget buildLoginForm() => Padding(
//   //       padding: EdgeInsets.all(20),
//   //       child: Column(
//   //         children: [
//   //           TextField(controller: userCtrl, decoration: InputDecoration(labelText: 'Username')),
//   //           TextField(controller: passCtrl, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
//   //           SizedBox(height: 20),
//   //           ElevatedButton(onPressed: checkLogin, child: Text('Login')),
//   //         ],
//   //       ),
//   //     );

//   Widget buildProfile() => Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Welcome, ${loggedInUser!.name}', style: TextStyle(fontSize: 20)),
//             SizedBox(height: 10),
//             Text('Email: ${loggedInUser!.email}'),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => setState(() => loggedInUser = null),
//               child: Text('Logout'),
//             ),
//           ],
//         ),
//       );
// }