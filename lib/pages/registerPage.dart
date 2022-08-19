import 'package:flutter/material.dart';

class regesterPage extends StatefulWidget {
  const regesterPage({Key? key}) : super(key: key);

  @override
  State<regesterPage> createState() => _regesterPageState();
}

class _regesterPageState extends State<regesterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              'images/dna2.png',
              height: 150,
              width: 150,
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    'بكم',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'cairo',
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'اهلا',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'cairo',
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 3,
                      width: 50,
                      color: Color(0xFF6344ee),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'جامعة تكنولوجيا الاعلام ',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'cairo',
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  child: Text(
                    'انشاء حساب',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'cairo'),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF6447ef),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  child: Text(
                    'تسجيل دخول',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'cairo'),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF4dc2f8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: Row(
                children: [
                  Container(height: 1, width: 85, color: Color(0xFF707070)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      'هل نسيت كلمة السر',
                      style: TextStyle(color: Color(0xFFb1b1b1)),
                    ),
                  ),
                  Container(height: 1, width: 85, color: Color(0xFF707070)),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                child: Text(
                  'تسجيل الدخول كزائر',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'cairo'),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFb1b1b1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
