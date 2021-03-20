import 'package:flutter/material.dart';
import 'package:neon_perspn/home.dart';


main(){

  runApp(Neon_Person());
}
class Neon_Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

