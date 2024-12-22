import 'package:flutter/material.dart';
import 'package:social_project/homeScreen.dart';
import 'package:social_project/signUp.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

bool show_password = true;

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CustomPaint(
                  painter: CurvedPainter(),
                  child: Container(
                    height: 300,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 70),
                      Icon(
                        Icons.design_services_rounded,
                        size: 100,
                        color: Colors.white,
                      ),
                      Text(
                        "Service Provider",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_2),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Username"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                  obscureText: show_password,
                  decoration: InputDecoration(
                      prefixIcon: Icon((Icons.lock)),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(show_password_function);
                          },
                          icon: Icon(Icons.visibility)),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return Signup();
                        }));
                      },
                      child: Text("Not registered? Signup..")),
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return homeScreen();
                  }));
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.grey[900])),
                child: Text(
                  "                 Login                 ",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.75);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

show_password_function() {
  show_password = !show_password;
}
