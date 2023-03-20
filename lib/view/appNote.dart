import 'package:flutter/material.dart';
import 'package:note_app_second_try/view/widgets/addNoteBottomSheet.dart';
import 'package:note_app_second_try/view/widgets/notesViewBody.dart';

class mainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)
                )
              ),
                context: context,
                builder: (context){
                 return  const AddNoteBottomSheet();
                }
                );
          },
          child: const Icon(Icons.add)),
      body: const NotesViewBody(),
    );
  }
}


