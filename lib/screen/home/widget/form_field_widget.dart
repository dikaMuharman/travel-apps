import 'package:flutter/material.dart';

import '../../../constants.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 19,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search',
        prefixIcon: Icon(
          Icons.search,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
