import 'package:flutter/material.dart';
import 'package:note_app_second_try/view/widgets/notesViewBody.dart';
import 'customAppBar.dart';
class NotesViewBody extends StatelessWidget {
     const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width =MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16
      ),
      child: Column(
            children: const [
               SizedBox(
                 height: 50,
               ),
               CustomAppBar(),
               Expanded(child: NotesListView())

            ],
      ),
    );
  }
}



