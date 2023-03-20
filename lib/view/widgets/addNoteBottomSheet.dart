import 'package:flutter/material.dart';
import 'package:note_app_second_try/view/widgets/constants.dart';
import 'package:note_app_second_try/view/widgets/customTextField.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16
      ),
      child:  SingleChildScrollView(
        child: Column(
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
            ),
            SizedBox(
              height:32,
            ),
            CustomButton(),
            SizedBox(
              height:16,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: PrimaryColor,
        borderRadius: BorderRadius.circular(8)

      ),
      child: const Center(
          child: Text('Add',style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)),
    );
  }
}

