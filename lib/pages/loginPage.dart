import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
              height: 80,
              width: 80,
            )),
            SizedBox(
              height: 10,
            ),
            Text(
              'جامعة التكنولوجيا و الاعلام ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'cairo',
                  color: Color(0xFF707070)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 1.6),
                      child: Text(
                        'Future',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'cairo',
                            color: Color(0xFF707070)),
                      ),
                    ),
                    Container(
                      height: 3,
                      width: 55,
                      color: Color(0xFF6344ee),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    'of E-unversity',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        color: Color(0xFF707070)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFadadad),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'البريد الالكتروني',
                      style: TextStyle(color: Color(0xFF707070), fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFadadad),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'الرمز السري',
                      style: TextStyle(color: Color(0xFF707070), fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                child: Text(
                  'تسجيل دخول',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF4dc2f8),
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
