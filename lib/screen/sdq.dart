import 'package:flutter/material.dart';

class SDQ extends StatefulWidget {
  const SDQ({super.key});

  @override
  Widget build(BuildContext context) {
    int  _selectedChoice
    return Scaffold(
      appBar: AppBar(
        title: const Text("แบบประเมิน SDQ "),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ข้อที่ 1 ",
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('1'),
                    leading: Radio(
                        toggleable: true,
                        value: 1,
                        groupValue: _selectedChoice,
                        onChanged: (value) {
                          setState(() {
                            _selectedChoice = value;
                          });
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
