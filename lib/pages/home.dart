import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _text1 = TextEditingController();
  final TextEditingController _text2 = TextEditingController();
  final TextEditingController _text3 = TextEditingController();

  String str = "";
  bool b = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Text("TextFromFied #1"),
            TextFormField(
              controller: _text1,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text("TextFromFied #2"),
            TextFormField(
              controller: _text2,
              keyboardType: TextInputType.url,
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text("TextFromFied #3"),
            TextFormField(
              controller: _text3,
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                setState(() {});
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: "Hello",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.green,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(
                    width: 3,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(
                    width: 3,
                    color: Color.fromARGB(255, 175, 76, 170),
                  ),
                ),
              ),
            ),
            Text("show input ${_text1.text}\n"),
            Text("show input ${_text2.text}\n"),
            Text("show input ${_text3.text}\n"),
            Text("Radio Title"),
            RadioListTile(
              title: Text("Radio1"),
              value: "Pizza1",
              groupValue: str,
              onChanged: (value) {
                setState(() {
                  str = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Radio2"),
              value: "Pizza2",
              groupValue: str,
              onChanged: (value) {
                setState(() {
                  str = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Radio3"),
              value: "Pizza3",
              groupValue: str,
              onChanged: (value) {
                setState(() {
                  str = value!;
                });
              },
            ),
            Text("Radio Title ${str}"),
            Text("\nCheackBox Title"),
            CheckboxListTile(
              title: Text("CheackBook#1"),
              value: b,
              onChanged: (value) {
                setState(() {
                  b = value!;
                });
              },
            ),
            Text("Radio Title ${b}"),
          ],
        ),
      ),
    );
  }
}
