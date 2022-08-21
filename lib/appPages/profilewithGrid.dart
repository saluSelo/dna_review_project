import 'package:dna_course_review_project/E-university/homePage.dart';
import 'package:flutter/material.dart';
import 'package:button_navigation_bar/button_navigation_bar.dart';
import 'package:button_navigation_bar/button_navigation_expandable.dart';

class GridProfilePage extends StatefulWidget {
  const GridProfilePage({Key? key}) : super(key: key);

  @override
  State<GridProfilePage> createState() => _GridProfilePageState();
}

class _GridProfilePageState extends State<GridProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Icon(
                  Icons.notifications_active,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2QFaQyezndgniERWn-5S9oNrdXzK9yALQCj_V384ErrrH7il5bou3nGTREZCPMsoCjGY&usqp=CAU'))),
                ),
                Text(
                  'salwan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('baghdad'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profilePosts(53, 'photos'),
                profilePosts(132, 'followers'),
                profilePosts(1000, 'following'),
              ],
            ),
            Container(
              height: 500 - 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  posts(
                      'https://www.princeton.edu/sites/default/files/styles/half_2x/public/images/2022/02/KOA_Nassau_2697x1517.jpg?itok=iQEwihUn'),
                  posts(
                      'https://th-thumbnailer.cdn-si-edu.com/SdKYWifCKfE2g8O-po_SO99hQ-Y=/1000x750/filters:no_upscale():focal(3126x2084:3127x2085)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/ec/e6/ece69181-708a-496e-b2b7-eaf7078b99e0/gettyimages-1310156391.jpg'),
                  posts(
                      'https://d17fnq9dkz9hgj.cloudfront.net/breed-uploads/2022/03/teddybear-dog-breeds.jpeg?bust=1646780646'),
                  posts(
                      'https://www.thesprucepets.com/thmb/et0R6AiQHOqP9s4WGHcfKBDPjVo=/2667x2000/smart/filters:no_upscale()/cute-teacup-dog-breeds-4587847-hero-4e1112e93c68438eb0e22f505f739b74.jpg'),
                  posts(
                      'https://www.dogsnsw.org.au/media/1007/breeding-dogs.jpg'),
                  posts(
                      'https://www.collinsdictionary.com/images/full/dog_230497594.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ButtonNavigationBar(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        children: [
          ButtonNavigationItem(
              label: '',
              icon: Icon(
                Icons.person,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => (homePage())));
              }),
          ButtonNavigationItem(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  // cardCounter++;
                });
              }),
          ButtonNavigationItem.expandable(
              expandableSpacing: 48.0,
              verticalOffset: 56.0,
              icon: Icon(Icons.expand_less),
              collapseButton: ButtonNavigationItem(
                  onPressed: () {},
                  color: Colors.blueGrey,
                  icon: Icon(Icons.close)),
              children: [
                ButtonNavigationExpandable(
                  onPressed: () {},
                  label: "Option 1",
                  height: 40,
                  width: 128,
                  icon: Icon(Icons.info),
                ),
                ButtonNavigationExpandable(
                    onPressed: () {}, height: 40, width: 96, label: "Option 2"),
              ]),
          ButtonNavigationItem(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {});
              }),
          ButtonNavigationItem(
              icon: Icon(Icons.view_stream_sharp),
              onPressed: () {
                setState(() {
                  // cardCounter = 2;
                });
              }),
        ],
      ),
    );
  }

  Container profilePosts(int numbers, String info) {
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: [Text('$numbers'), Text('$info')],
      ),
    );
  }

  Container posts(url) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
    );
  }
}
