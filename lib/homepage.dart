import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:purewell/Components/HealthView.dart';
import 'package:purewell/Components/emotion_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void>_launchURL(String url)async{
    final Uri uri = Uri(scheme:"https",host: url);
    if (!await launchUrl(
     uri,
      mode: LaunchMode.externalApplication,)){
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Center(
            child: Text(
          "Cure Well",
          style: TextStyle(),
        )
        ),
      ),
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Lottie.asset('assets/animations/Comp 1.json',
            height: 200,
              repeat: true,
              reverse: true,
              fit: BoxFit.fill
            ),
            SizedBox(height: 15,),
            ElevatedButton(
style: ElevatedButton.styleFrom(
    backgroundColor: Colors.pinkAccent,
    shape:RoundedRectangleBorder
      (borderRadius: BorderRadius.circular(5),)),
                onPressed:(){
  _launchURL("www.facebook.com");
                },
                child: Text("Download App!",
                  style:TextStyle(color:
                  Colors.white,
                  ),)),
            //greetings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hii Rahul!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "13 March 2023",
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [

                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // how do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("How do you feel ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          EmotionIcon(
                            emotionIcon: '🤕',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Diagnosis",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          EmotionIcon(
                            emotionIcon: '🤒',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Fever",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          EmotionIcon(
                            emotionIcon: '😨',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Cold",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          EmotionIcon(
                            emotionIcon: '🥴',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Tired",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: SingleChildScrollView(
                  child: Container(
              padding: EdgeInsets.all(22),
              color: Colors.grey[200],
              child: Center(
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              Row(
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
                                        width: 12,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Text(
                                            "Medicines",
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
                                            "Details",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                      Icon(Icons.more_horiz),
                                    ],
                                  ),
                               SizedBox(height: 10,
                               ),
                                  // listview

                                ],
                              ),
                            ],
                          ),
                      ),
                      SizedBox(height: 12,),
                      Container( padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Row(
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
                                      width: 12,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[
                                        Text(
                                          "Book Appoinment",
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
                                          "Fast and Secure",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    Icon(Icons.more_horiz),
                                  ],
                                ),
                                SizedBox(height: 10,
                                ),
                                // listview

                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Row(
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
                                      width: 12,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[
                                        Text(
                                          "Nearby",
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
                                          "Nearest You",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    Icon(Icons.more_horiz),
                                  ],
                                ),
                                SizedBox(height: 10,
                                ),
                                // listview

                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(16),


                        ),
                        child: Column(
                          children: [
                            Row(
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
                                      width: 12,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[
                                        Text(
                                          "Nearby",
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
                                          "Nearest You",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    Icon(Icons.more_horiz),
                                  ],
                                ),
                                SizedBox(height: 10,
                                ),
                                // listview

                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
              ),
            ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
