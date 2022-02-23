import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/screens/wrapper.dart';
import 'package:flutter/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<MyApp> {
//   final Future<FirebaseApp> _initalization = Firebase.initializeApp();

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           // This is the theme of your application.
//           //
//           // Try running your application with "flutter run". You'll see the

//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           body: FutureBuilder(
//             future: _initalization,
//             builder: (context, snapshot) {
//               if (snapshot.hasError) {
//                 return Container(
//                   color: Colors.red,
//                 );
//               } else if (snapshot.connectionState == ConnectionState.done) {
//                 return Container(
//                   color: Colors.blue,
//                 );
//               } else {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             },
//           ),
//         ));
//   }
// }
