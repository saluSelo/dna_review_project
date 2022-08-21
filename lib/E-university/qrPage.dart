import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRPage extends StatefulWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/dna2.png',
              height: 80,
              width: 80,
            ),
            Text(
              'Salwan Adnan Sabri',
              style: TextStyle(
                  fontSize: 30, fontFamily: 'cairo', color: Color(0xFF707070)),
            ),
            QrImage(
              data: 'This QR code has an embedded image as well',
              version: QrVersions.auto,
              size: 200,
              gapless: false,
              embeddedImage: AssetImage('images/maria.jpg'),
              embeddedImageStyle: QrEmbeddedImageStyle(
                size: Size(80, 80),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'المرحلة الرابعة',
              style: TextStyle(
                  fontSize: 30, fontFamily: 'cairo', color: Color(0xFF707070)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'قسم هندسة المعلومات و الاتصالات',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'cairo', color: Color(0xFF707070)),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'جدول المواد',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'cairo',
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.note),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF6447ef),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.keyboard_arrow_up,
              size: 50,
              color: Color(0xFF707070),
            ),
            Text('الاشعارات')
          ],
        ),
      ),
    );
  }
}
