import 'package:flutter/material.dart';

class Form_Test extends StatefulWidget {
  const Form_Test({Key? key}) : super(key: key);

  @override
  State<Form_Test> createState() => _FormTestState();
}

class _FormTestState extends State<Form_Test> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name = '';

  Widget _buildNameField() {
    return TextFormField(
        maxLength: 20,
        decoration: const InputDecoration(hintText: 'Name'),
        maxLines: 2,
        validator: (textFieldValue) {
          if (textFieldValue!.isEmpty) {
            return 'Name cannot be empty';
          }
          return null;
        },
        onSaved: (textFieldValue) {
          _name = textFieldValue!;
        });
  }

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
                _buildNameField(),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: ElevatedButton(
                      child: Text('Save'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();
                          print('Pressed');
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
