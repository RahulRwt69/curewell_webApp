import 'package:flutter/material.dart';
class HealthView extends StatelessWidget {
  final icon;
  final String health;
  final String numberhealth;

   HealthView({Key? key, this.icon, required this.health, required this.numberhealth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.only(bottom:8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                          padding:EdgeInsets.all(16),
                          color: Colors.pink,
                          child: Icon(Icons.favorite,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Health",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        //subtitle
                        Text(
                          "Normal",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz),
              ],
            )
    );
  }
}
