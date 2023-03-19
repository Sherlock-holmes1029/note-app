import 'package:flutter/material.dart';
import 'package:note_app_second_try/view/widgets/customTextField.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16
      ),
      child:  Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          customTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          customTextField(
              hint: 'content',
              maxLines: 5,
          )
        ],
      ),
    );
  }
}


