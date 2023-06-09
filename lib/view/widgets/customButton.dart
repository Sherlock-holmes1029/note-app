import 'package:flutter/material.dart';
import 'constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap}) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}

