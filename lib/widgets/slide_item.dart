
import 'package:flutter/material.dart';
import 'package:manager_money_provider_sqlite/model/slide_model.dart';

class SlideItem extends StatelessWidget {
  Color prColor = const Color(0xFF2D5D7B);
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(slideList[index].urlImage),
                  fit: BoxFit.cover
              )
          ),
        ),
        SizedBox(height: 20,),
        Text(slideList[index].title, style: TextStyle(color: prColor, fontSize: 22),textAlign: TextAlign.center,),
        SizedBox(height: 15,),
        Text(slideList[index].description),
        SizedBox(height: 10,)
      ],
    );
  }
}
