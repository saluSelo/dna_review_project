import 'package:flutter/material.dart';

class notificationPage extends StatefulWidget {
  const notificationPage({Key? key}) : super(key: key);

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class _notificationPageState extends State<notificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30, top: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 45,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color(0xFF6447ef),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            'الاشعارات',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'cairo'),
                          ),
                        ),
                        Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'سلوان عدنان صبري',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'cairo',
                                      color: Color(0xFF707070)),
                                ),
                                Text(
                                  'المرحلة الرابعة ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'cairo',
                                      color: Color(0xFF707070)),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.notifications_active,
                              color: Colors.blue.shade600,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '18-08-2022 11:11',
                              style: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Container(
                                  height: 1,
                                  width: 217,
                                  color: Color(0xFF707070)),
                            )
                          ],
                        ),
                        Text(
                          'Hi, I am Mr. Shaheen Pribo. I tried to contact Mrs. Beka, but it shows me a mistake. In any case, I will send you the',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                )
              ]),
        )));
  }
}
