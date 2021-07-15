
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:manager_money_provider_sqlite/model/slide_model.dart';
import 'package:manager_money_provider_sqlite/widgets/slide_dots.dart';
import 'package:manager_money_provider_sqlite/widgets/slide_item.dart';
import 'package:manager_money_provider_sqlite/view/login_screen.dart';

import 'login_screen.dart';

class GettingStartedScreen extends StatefulWidget {
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  Color prColor = const Color(0xFF2D5D7B);
  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);


  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer){
      if(_currentPage < 2){
        _currentPage++;
      }else{
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });

  }
  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  PageView.builder(
                    itemCount: slideList.length,
                    itemBuilder: (context,i) => SlideItem(i),
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: _onPageChanged,),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 35),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for(int i=0; i < slideList.length; i++)
                              if(i == _currentPage)
                                SlideDots(true)
                              else
                                SlideDots(false)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Getting Started',
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: prColor,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Have an account?',
                      style: TextStyle(fontSize: 18),
                    ),
                    FlatButton(onPressed: (){
                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                    }, child: Text('Login',style: TextStyle(color: prColor,fontSize: 18))),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
