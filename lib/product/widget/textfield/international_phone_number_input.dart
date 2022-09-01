import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class InternationalPhoneNumber extends StatefulWidget {
  const InternationalPhoneNumber({Key? key, required this.controller, this.number}) : super(key: key);
  final TextEditingController controller;
  final PhoneNumber? number;

  @override
  _InternationalPhoneNumberState createState() => _InternationalPhoneNumberState();
}

class _InternationalPhoneNumberState extends State<InternationalPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (value) {},
      onInputValidated: (bool value) {},
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: const TextStyle(color: Colors.black),
      initialValue: widget.number,
      textFieldController: widget.controller,
      formatInput: false,
      keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
      // inputBorder: const OutlineInputBorder(),
      onSaved: (PhoneNumber number) {},
    );
  }
}
