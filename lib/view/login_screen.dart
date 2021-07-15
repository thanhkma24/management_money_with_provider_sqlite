
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    Color prColor = const Color(0xFF2D5D7B);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: prColor,
      appBar: AppBar(
        leading: InkWell(onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back_ios, size: 20,color: Colors.white,)),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: TextFormField()
      ),
    );
  }
}
