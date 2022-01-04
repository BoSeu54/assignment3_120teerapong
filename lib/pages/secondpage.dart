import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var stdid = new TextEditingController();
  var stdname = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Pages'),
      ),
      body: Center(
        child: ListView(
          children: [
            logopic(),
            secondpagewidget(),
            textfieldid(),
            textfieldname(),
            elevatedbutton(context),
          ],
        ),
      ),
    );
  }

  Padding elevatedbutton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('กลับไปหน้าแรก'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    var route = MaterialPageRoute(
                      builder: (context) => ThirdPage(
                        stdId: stdid.text, // stdId: '${stdid}',
                        stdName: stdname.text,
                      ),
                    );
                    Navigator.push(context, route);
                  },
                  child: const Text('ยืนยัน พร้อมส่งค่าข้อมูล'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding textfieldname() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: TextField(
        maxLength: 30,
        controller: stdname,
        decoration: InputDecoration(
            labelText: 'ชื่อนิสิต',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)))),
      ),
    );
  }

  Padding textfieldid() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
      child: TextField(
        maxLength: 10,
        controller: stdid,
        decoration: InputDecoration(
            labelText: 'รหัสนิสิต',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)))),
      ),
    );
  }

  Widget secondpagewidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'My Second Page',
            style: GoogleFonts.mali(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }

  Padding logopic() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Image.asset(
        'images/person.png',
        fit: BoxFit.contain,
        height: 150,
        width: 100,
      ),
    );
  }
}
