import 'package:flutter/material.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({Key? key}) : super(key: key);

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('images/dna2.png')),
          SizedBox(
            height: 30,
          ),
          Text(
            'تحميل البيانات',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'cairo'),
          ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
