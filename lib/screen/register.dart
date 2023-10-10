import 'package:flutter/material.dart';
import 'package:flutter_application_1_test/model/profile.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();

  Profile profile =
      Profile(email: '', password: '', name: ''); // ดึงข้อมูลจาก class profile
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สร้างบัญชีผู้ใช้"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: formkey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("อีเมล", style: TextStyle(fontSize: 20)),
                    TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(errorText: "กรุณาป้อนอีเมลด้วยครับ"),
                        EmailValidator(errorText: "รูปแบบอีเมลไม่ถูกต้อง")
                      ]),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (value) {
                        profile.email = value;
                      },
                    ), //เช็ค ความถูกต้องของเมล
                    SizedBox(
                      height: 15,
                    ),
                    Text("รหัสผ่าน", style: TextStyle(fontSize: 20)),
                    TextFormField(
                      validator: RequiredValidator(
                          errorText: "กรุณาป้อนรหัสผ่านด้วยครับ"),
                      obscureText: true,
                    ), //ปิดรหัสผ่าน
                    SizedBox(
                      height: 15,
                    ),
                    Text("ชื่อ-สกุล", style: TextStyle(fontSize: 20)),
                    TextFormField(
                      validator: RequiredValidator(
                          errorText: "กรุณาป้อนชื่อสกุลด้วยครับ"),
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text(
                          "ลงทะเบียน",
                          style: TextStyle(fontSize: 25),
                        ),
                        onPressed: () {
                          formkey.currentState!.save();
                          print('email = {$profile.email}'
                              'password = {$profile.password}'
                              'name = {$profile.name}');
                          //formkey.currentState!.reset();
                        },
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
