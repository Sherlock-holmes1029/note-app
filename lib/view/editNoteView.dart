import 'package:flutter/material.dart';
import 'package:note_app_second_try/view/widgets/editViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: EditNoteViewBody(

        ),
      ),
    );
  }
}
