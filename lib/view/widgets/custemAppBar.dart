import 'package:flutter/material.dart';
import 'custemSearchIcon.dart';

class CustomAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Row(
      children: const  [
        Text("Notes",style: TextStyle(
          fontSize: 28,
         ),
        ),
        Spacer(),
        CustemSearchIcon()
      ],
    );
  }
}

