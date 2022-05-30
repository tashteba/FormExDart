import 'package:app/Senodpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discord',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(title: 'NavBar en cours'),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: "LastName"),
              keyboardType: TextInputType.text,
              controller: nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Last Name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "FirstName"),
              keyboardType: TextInputType.text,
              controller: firstNameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your First Name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Email"),
              keyboardType: TextInputType.text,
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Email';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Passwprd"),
              keyboardType: TextInputType.text,
              controller: passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Password';
                }
                return null;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: "Confirm Your Password"),
              keyboardType: TextInputType.text,
              controller: confirmPasswordController,
              validator: (value) {
                if (confirmPasswordController.value != passwordController.value ) {
                  return 'Please Confirm Your Password with good password';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SecondPage(lastname: nameController.text, firstname : firstNameController.text, email : emailController.text , mdp : passwordController.text))));
                }
              },
              child: const Text("Valider"),
            )
          ],
        ),
      ),
    ));
  }
}
