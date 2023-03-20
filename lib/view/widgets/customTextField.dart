import 'package:flutter/material.dart';
import 'package:note_app_second_try/view/widgets/constants.dart';

class customTextField extends StatelessWidget {
  const customTextField({Key? key, required this.hint, this.maxLines=1, this.onSaved}) : super(key: key);
  final String hint;
  final int maxLines ;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value?.isEmpty ??true){ //if null equal true
          return  'Field is required';
        }
      },
      onSaved: onSaved,
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
