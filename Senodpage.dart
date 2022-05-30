import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  const SecondPage({Key? key, required this.lastname, required this.firstname, required this.email, required this.mdp, }) : super(key: key);
  final String lastname;
  final String firstname;
  final String email;
  final String mdp;

  @override
  State<SecondPage> createState() => _SecondPageState();

}
class _SecondPageState extends State<SecondPage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(widget.lastname),
            Text(widget.firstname),
            Text(widget.email),
            Text(widget.mdp),
          ],
        ),
      ),
    ));
  }
}
