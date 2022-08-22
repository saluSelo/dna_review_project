import 'package:flutter/material.dart';

import 'package:dna_course_review_project/instagram/instagramPage.dart';

import 'explore.dart';

class profilePage extends StatefulWidget {
  profilePage({
    Key? key,
    required this.ProfileImage,
    required this.bio,
    required this.bio2,
    required this.Likes,
  }) : super(key: key);

  final String ProfileImage;
  final String bio;
  final String bio2;
  final int Likes;
  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: navbar(),
        body: Center(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SafeArea(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'images/back.jpg',
                            ))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => instaPage()));
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 70.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Salwan Adnan ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Baghdad, Iraq ',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Text(
                                      "${widget.bio}",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${widget.bio2}",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                            'images/chat.png',
                                          )),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.grey.withOpacity(0.7),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0, right: 20),
                                        child: SizedBox(
                                          height: 50,
                                          width: 150,
                                          child: ElevatedButton(
                                            child: Text(
                                              'follow',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xFF3b70fa),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30))),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.grey.withOpacity(0.7),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.share,
                                          color: Color(0xFF3b70fa),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            '870',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              'following',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '120K',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              'followers',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "${widget.Likes}",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              'Likes',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color(0xFFf2f3f7),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0,
                                        right: 15,
                                        top: 10,
                                        bottom: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'followers',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'View all',
                                          style: TextStyle(
                                              color: Color(0xFF3b70fa)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 110,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        user(),
                                        user(),
                                        user(),
                                        user(),
                                        user(),
                                        user(),
                                        user(),
                                        user(),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color(0xFFf2f3f7),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5.0, right: 320, left: 25),
                                    child: Text(
                                      'Posts',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        posts(),
                                        posts(),
                                        posts(),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      posts(),
                                      posts(),
                                      posts(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 650,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                            widget.ProfileImage,
                          )),
                        ),
                      ))
                ],
              ),
            ),
          ],
        )));
  }

  Column user() {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/icon.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle),
        ),
        Text(
          'salwan',
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }

  Container posts() {
    return Container(
        height: 130,
        width: 80,
        margin: EdgeInsets.only(left: 15.0, right: 15),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/post.jpg'),
            fit: BoxFit.fill,
          ),
        ));
  }

  BottomNavigationBar navbar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => instaPage()));
            },
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Icon(
              Icons.video_library_outlined,
              color: Colors.black,
              size: 30,
            ),
            onTap: () {},
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 30,
            ),
            onTap: () {},
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          label: '',
        ),
      ],
    );
  }
}
