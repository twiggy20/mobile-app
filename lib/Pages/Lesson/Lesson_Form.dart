import 'package:flutter/material.dart';

class LessonForm extends StatefulWidget {

  static const String id = "lesson_form";

  Function callback;

  LessonForm({this.callback});

  @override
  _LessonFormState createState() => _LessonFormState();
}

class _LessonFormState extends State<LessonForm> {
  final _formKey = GlobalKey<FormState>();

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();

  final TextEditingController _topicController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  _nextFocus(FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson Form'),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _topicController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    focusNode: _nameFocusNode,
                    onFieldSubmitted: (String value) {
                      //Do anything with value
                      _nextFocus(_phoneFocusNode);
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter lesson topic'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
