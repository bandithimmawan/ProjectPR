import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตัวอย่างการใช้ onSaved'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'ชื่อ',
              ),
              onSaved: (value) {
                setState(() {
                  name = value ?? '';
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                // เรียก onSaved ของ TextFormField และบันทึกข้อมูล
                _formKey.currentState!.save();
                // แสดงชื่อที่ถูกบันทึก
                print('ชื่อที่ถูกบันทึก: $name');
              },
              child: Text('บันทึก'),
            ),
          ],
        ),
      ),
    );
  }
}
