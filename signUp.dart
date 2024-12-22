import 'package:flutter/material.dart';
import 'package:social_project/loginPage.dart';
import 'package:social_project/termsScreen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

bool show_confirm_password = true;
bool show_create_password = true;

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 45, 20, 30),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
                child: Column(
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Create your account ",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_2),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Username"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.male),
                        hintText: "Select Gender",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      items: ["Male", "Female"]
                          .map((gender) => DropdownMenuItem<String>(
                                value: gender,
                                child: Text(gender),
                              ))
                          .toList(),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_android),
                          hintText: "Phone Number",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.date_range),
                          hintText: "DD-MM-YYYY",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      obscureText: show_create_password,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(create_password_function);
                              },
                              icon: Icon(Icons.visibility)),
                          hintText: "Create Password",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      obscureText: show_confirm_password,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(confirm_password_function);
                              },
                              icon: Icon(Icons.visibility)),
                          hintText: "Confirm Password",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Termsscreen();
                          }));
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.grey[900])),
                        child: Text(
                          "                 Confirm                 ",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already a user?",
                          style: TextStyle(fontSize: 15),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return Loginpage();
                            }));
                          },
                          child: Text("Login",
                              style: TextStyle(
                                  decoration: TextDecoration.underline)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

create_password_function() {
  show_create_password = !show_create_password;
}

confirm_password_function() {
  show_confirm_password = !show_confirm_password;
}
