import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app_second_try/view/editNoteView.dart';


class NoteItems extends StatelessWidget {
  const NoteItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        })
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,

        ),
        decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(

              title: const Text('Flutter Tips',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26

                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16
                ),
                child: Text('Build your career with Rami Abu Kishk',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 18
                  ),
                ),
              ),
              trailing: IconButton(onPressed: (){},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 24
              ),
              child: Text('May21, 2022',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 16
                )
                ,),
            )
          ],
        ),

      ),
    );
  }
}
