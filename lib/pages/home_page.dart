import 'package:cash_rocket/pages/invite_friends_page.dart';
import 'package:cash_rocket/pages/video_page.dart';
import 'package:cash_rocket/pages/wheel_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glassmorphism/glassmorphism.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xFFFF485E),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              // CircleAvatar(
                              //   backgroundColor: Colors.white,
                              //   radius: 24,
                              //   child: Image.asset(
                              //     'assets/images/avatar.png',
                              //     fit: BoxFit.fill,
                              //   ),
                              // ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/avatar.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Mohemmed ',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          GlassmorphicContainer(
                            margin: EdgeInsets.only(left: 80),
                            width: 100,
                            height: 40,
                            borderRadius: 20,
                            linearGradient: LinearGradient(colors: [
                              Color(0xFFffffff).withOpacity(0.2),
                              Color(0xFFFFFFFF).withOpacity(0.2),
                            ]),
                            border: 1,
                            blur: 20,
                            borderGradient: LinearGradient(colors: [
                              Color(0xFFffffff).withOpacity(0.3),
                              Color((0xFFFFFFFF)).withOpacity(0.3),
                            ]),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Icons.monetization_on_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '1,200 ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      GlassmorphicContainer(
                        borderRadius: 30,
                        width: 360,
                        height: 60,
                        linearGradient: LinearGradient(colors: [
                          Color(0xFFffffff).withOpacity(0.2),
                          Color(0xFFFFFFFF).withOpacity(0.2),
                        ]),
                        border: 1,
                        blur: 20,
                        borderGradient: LinearGradient(colors: [
                          Color(0xFFffffff).withOpacity(0.3),
                          Color((0xFFFFFFFF)).withOpacity(0.3),
                        ]),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 24,
                                  child: Image.asset('assets/images/meter.png'),
                                ),
                                Text(
                                  'Collect daily rewards now',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 24,
                                  child: Text(
                                    '20+',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFFFF485E).withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Tranding offers',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 340,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/banner1.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 340,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/banner2.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFA028),
                              Color(0xFFFF7920),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 0.8],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Redeem Poings',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Redeem yoopees for\nyour favorite prize',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Icon(
                                      FontAwesomeIcons.arrowRightLong,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/hand_money.png',
                              fit: BoxFit.cover,
                              width: 150,
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFEA97B1),
                              Color(0xFF9B64DD),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 0.8],
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'All Features',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 16),
                      GridView.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        shrinkWrap: true,
                        childAspectRatio: 3 / 4,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/offer.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text('Offers'),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => VideoPage(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/videos.png',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text('Videos'),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => WheelPage(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/wheel.png',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text('Wheel'),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => InviteFriendsPage(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/refer.png',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text('Refer'),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/reedem.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text('Redeem'),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/quiz.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text('Quiz'),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/tutorial.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text('Tutorial'),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/share.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text('Share'),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 40,
                                child: Icon(
                                  FontAwesomeIcons.link,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              SizedBox(height: 4),
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text('Visit Website'),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFA253FA),
                                radius: 40,
                                child: Icon(
                                  FontAwesomeIcons.ticket,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              SizedBox(height: 4),
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text('Scratch Card'),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.orange,
                                radius: 40,
                                child: Icon(
                                  Icons.note_alt,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text('Survay'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
