import 'package:flutter/material.dart';
import 'package:note_app_second_try/view/widgets/customAppBar.dart';
import 'package:note_app_second_try/view/widgets/customTextField.dart';


class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24
      ),
      child: Column(
        children: const[
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          customTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          customTextField(hint: 'Content',maxLines: 5,)
        ],
      ),
    );
  }
}
