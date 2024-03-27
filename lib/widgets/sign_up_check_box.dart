import 'package:flutter/material.dart';
import 'package:organico/theme.dart';

class SignUpCheckBox extends StatefulWidget {
  const SignUpCheckBox({Key? key}) : super(key: key);

  @override
  State<SignUpCheckBox> createState() => _SignUpCheckBox();
}

class _SignUpCheckBox extends State<SignUpCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.green;
    }

    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text('I accept the Terms of Use and Privacy Policy',
            style: nunitoTextStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.right),
      ],
    );
  }
}
