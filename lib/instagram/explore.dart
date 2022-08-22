import 'package:dna_course_review_project/instagram/data.dart';
import 'package:dna_course_review_project/instagram/profile.dart';
import 'package:flutter/material.dart';

import 'instagramPage.dart';

class explorePage extends StatefulWidget {
  const explorePage({Key? key}) : super(key: key);

  @override
  State<explorePage> createState() => _explorePageState();
}

class _explorePageState extends State<explorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: navbar(),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xFFeeeeee),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, bottom: 5, top: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'search',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 650,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  imagePosts('images/8.jpg'),
                  imagePosts('images/7.jpg'),
                  imagePosts('images/6.jpg'),
                  imagePosts('images/5.jpg'),
                  imagePosts('images/4.jpg'),
                  imagePosts('images/3.jpg'),
                  imagePosts('images/2.jpg'),
                  imagePosts('images/1.jpg'),
                  imagePosts('images/8.jpg'),
                  imagePosts('images/7.jpg'),
                  imagePosts('images/post.jpg'),
                  imagePosts('images/post2.jpg'),
                  imagePosts('images/back.jpg'),
                  imagePosts('images/3.jpg'),
                  imagePosts('images/2.jpg'),
                  imagePosts('images/1.jpg'),
                  imagePosts('images/wanda.jpg'),
                  imagePosts('images/Tony_Stark.jpg'),
                  imagePosts('images/maria.jpg'),
                  imagePosts('images/moon_knight.jpg'),
                  imagePosts('images/deadpool.jpg'),
                  imagePosts('images/eyes.jpg'),
                  imagePosts('images/daredevil.jpg'),
                  imagePosts('images/anya.jpg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => explorePage()));
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
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => profilePage(
                        ProfileImage: poster,
                        bio:
                            'just a normal nerd who loves marvel and playes videogames',
                        bio2: 'and playes videogames',
                        Likes: 9000000,
                      )));
            },
          ),
          label: '',
        ),
      ],
    );
  }

  Container imagePosts(path) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover)),
    );
  }
}
