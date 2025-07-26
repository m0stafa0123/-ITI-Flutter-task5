import 'package:flutter_application_1/features/signup-page.dart';
import 'package:flutter_application_1/assits/imports/app_import.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThems.lightThen ,
      home:SignUpScreen() ,    
      
    );
  }
}

