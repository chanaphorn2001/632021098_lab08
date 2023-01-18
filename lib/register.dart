import 'package:flutter/material.dart';
import 'package:lab08/login.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _ResgisterState();
}

class _ResgisterState extends State<register> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController _controller1 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('REGISTER')),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _controller1,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Username", hintText: "Enter Your Username"),
              ),
              TextFormField(
                controller: _controller1,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Password", hintText: "Enter Your Password"),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print(_controller1.text);
                    }
                  },
                  child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
