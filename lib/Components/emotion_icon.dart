import 'package:flutter/material.dart';
class EmotionIcon extends StatelessWidget {
  final String emotionIcon;
   const EmotionIcon({Key? key, required this.emotionIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.all(12),
          child:Text(emotionIcon,
            style: TextStyle
              (color: Colors.yellow,
              fontSize: 24
            ),),
    );
  }
}

