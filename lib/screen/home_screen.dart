import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/top_header.png'))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 64,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/whats-clone-f7137.appspot.com/o/20180826_152459.jpg?alt=media&token=9464ecb3-265f-486a-9811-0cc904ae78d5'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MD TAMIM ISLAM KHAN',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Medium',
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                            Text(
                              '01682083312',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Montserrat Regular',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      primary: false,
                      children: [
                        Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904425.svg',
                                height: 128,
                              ),
                              Text('Personal data',style: cardTextStyle,),
                            ],
                          ),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),


                        Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904565.svg',
                                height: 128,
                              ),
                              Text('Course Schedule',style: cardTextStyle,),
                            ],
                          ),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904527.svg',
                                height: 128,
                              ),
                              Text('Attendance Recap',style: cardTextStyle,),
                            ],
                          ),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),

                        Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904437.svg',
                                height: 128,
                              ),
                              Text('Study Result',style: cardTextStyle,),
                            ],
                          ),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904235.svg',
                                height: 128,
                              ),
                              Text('Course Booking',style: cardTextStyle,),
                            ],
                          ),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904221.svg',
                                height: 128,
                              ),
                              Text('Course Plan',style: cardTextStyle,),
                            ],
                          ),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
