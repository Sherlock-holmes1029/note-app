import 'package:flutter/material.dart';
import 'package:note_app_second_try/view/widgets/customButton.dart';
import 'package:note_app_second_try/view/widgets/customTextField.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 16
      ),
      child:  SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children:  [
          const SizedBox(
            height: 32,
          ),
          customTextField(
            onSaved: (value){
              title=value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          customTextField(
            onSaved: (value){
              subTitle=value;
            },
              hint: 'content',
              maxLines: 5,
          ),
          const SizedBox(
            height:32,
          ),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode =AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          const SizedBox(
            height:16,
          ),
        ],
      ),
    );
  }
}

