import 'package:flutter/material.dart';
import 'package:note_app_second_try/view/widgets/constants.dart';

class customTextField extends StatelessWidget {
  const customTextField({Key? key, required this.hint, this.maxLines=1}) : super(key: key);
  final String hint;
  final int maxLines ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: PrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: PrimaryColor
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
          focusedBorder: buildBorder(PrimaryColor)
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color??Colors.white
        )
      );
  }
}
