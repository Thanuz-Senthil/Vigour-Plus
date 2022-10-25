import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController _feedbackTextController = TextEditingController();
  TextEditingController _NameTextController = TextEditingController();
  TextEditingController _AgeTextController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _feedbackTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _feedbackTextController,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: 'Enter your inquiries here.',
            filled: true,
          ),
          maxLines: 5,
          maxLength: 4096,
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return 'Please enter your inquiries';
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text ('Cancel'),
        ),
        TextButton(
          child: const Text ('Send'),
          onPressed: () async {

          },
        ),

      ],
    );
  }


  Widget Details(BuildContext context) {
    return Container(


      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Text(
                  'Your Name:',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Form(

                  child:
                  TextField(
                    obscureText: true,
                    cursorColor: Color(0xFF2196F3),

                  ),

                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}