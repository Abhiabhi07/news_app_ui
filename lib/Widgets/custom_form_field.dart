import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField(
      {super.key,
      required this.title,
      required this.formTitle,
      this.isVisible = false});

  final String title;
  final String formTitle;
  bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
                hintText: formTitle,
                suffixIcon: isVisible
                    ? Icon(
                        Icons.visibility_off_outlined,
                        size: 20,
                      )
                    : null,
                hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.black45,
                    ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
