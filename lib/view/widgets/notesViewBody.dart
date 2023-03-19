import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customNoteItem.dart';
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
            children: [
               SizedBox(
                 height: 50,
               ),
               CustomAppBar(),
              NoteItems(),
            ],
      ),
    );
  }
}

