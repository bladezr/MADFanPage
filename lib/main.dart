import 'package:fanpage_flutter/responsive/mobile_screen_layout.dart';
import 'package:fanpage_flutter/responsive/responsive_layout_screen.dart';
import 'package:fanpage_flutter/responsive/web_screen_layout.dart';
import 'package:fanpage_flutter/screens/login_screen.dart';
import 'package:fanpage_flutter/screens/signup_screen.dart';
import 'package:fanpage_flutter/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyBXxNQ9bNZVrV34HasSWfAH5NI03SJUkcw',
        appId: '1:273896514321:web:cff73773f740fee9be22b0',
        messagingSenderId: '273896514321',
        projectId: 'pagefan-2bb50',
        storageBucket: 'pagefan-2bb50.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fanpage app',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: SignupScreen(),
    );
  }
}
