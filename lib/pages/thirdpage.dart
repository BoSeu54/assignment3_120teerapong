import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key, this.stdId, this.stdName}) : super(key: key);

  final String? stdId;
  final String? stdName;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "รหัสนิสิต ${widget.stdId}",
              style: GoogleFonts.mali(
                fontSize: 20,
              ),
            ),
            Text(
              "ชื่อ ${widget.stdName}",
              style: GoogleFonts.mali(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('กลับไปหน้าที่ 2')),
            )
          ],
        ),
      ),
    );
  }
}
