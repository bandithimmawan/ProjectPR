import 'package:flutter/material.dart';
import 'package:flutter_application_1_test/screen/login.dart';
import 'package:flutter_application_1_test/screen/register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Register/login"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/iconPR.png",
                  height: 300,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text("สร้างบัญชีผู้ใช้",
                        style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }));
                    },
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.login),
                      label: const Text("เข้าสู่ระบบ",
                          style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      },
                    )),
              ],
            ),
          ),
        ));
  }
}
