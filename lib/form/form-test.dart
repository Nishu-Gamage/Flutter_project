import 'package:flutter/material.dart';

class Form_Test extends StatefulWidget {
  const Form_Test({Key? key}) : super(key: key);

  @override
  State<Form_Test> createState() => _FormTestState();
}

class _FormTestState extends State<Form_Test> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter - Form'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(hintText: 'Name'),
                  maxLines: 2,
                  validator: (textFieldValue){
                    return null;
                  },
                  onSaved: (textFieldValue){
                    _name = textFieldValue!;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
