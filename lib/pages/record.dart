import 'package:flutter/material.dart';

class record extends StatefulWidget {
  const record({Key? key}) : super(key: key);

  @override
  State<record> createState() => _recordState();
}

class _recordState extends State<record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF6447ef),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90.0),
                          child: Row(
                            children: [
                              Text(
                                'سجل الطلاب',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'cairo'),
                              ),
                              Icon(Icons.book, color: Colors.white)
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 55,
              ),
              Column(
                children: [
                  sudrecord(),
                  sudrecord(),
                  sudrecord(),
                  sudrecord(),
                  sudrecord(),
                  sudrecord(),
                ],
              )
            ],
          ),
        ));
  }

  Container sudrecord() {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 7, bottom: 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'سلوان عدنان صبري',
                  style: TextStyle(fontFamily: 'cairo'),
                ),
                Text('المرحلة الرابعة - قسم هندسة المعلومات',
                    style: TextStyle(fontFamily: 'cairo')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Image.asset(
              'images/dna2.png',
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}
