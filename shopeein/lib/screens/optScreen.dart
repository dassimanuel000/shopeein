import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/widgets/appBar_close.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({Key? key}) : super(key: key);

  @override
  _OptScreenState createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mBackgroundColor,
        appBar: appBarTitle(context, "Add address"),
        body: ListView(scrollDirection: Axis.vertical, children: [
          SizedBox(height: context.height() * 0.1),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OtpForm(),
          ),
        ]));
  }
}

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextNode({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
// Get the proportionate height as per screen size
    double getProportionateScreenWidth(double inputWidth) {
      double screenWidth = context.width();
      // 375 is the layout width that designer use
      return (inputWidth / 375.0) * screenWidth;
    }

    OutlineInputBorder outlineInputBorder() {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(3)),
        borderSide: BorderSide(color: mPrimaryTextColor),
      );
    }

    final otpInputDecoration = InputDecoration(
      fillColor: iconColorSecondary,
      contentPadding:
          EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
      border: outlineInputBorder(),
      focusedBorder: outlineInputBorder(),
      enabledBorder: outlineInputBorder(),
    );

    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              autofocus: true,
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                nextNode(value: value, focusNode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin2FocusNode,
              style: TextStyle(fontSize: 24),
              autofocus: true,
              decoration: otpInputDecoration,
              obscureText: true,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                nextNode(value: value, focusNode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin3FocusNode,
              style: TextStyle(fontSize: 24),
              autofocus: true,
              decoration: otpInputDecoration,
              obscureText: true,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                nextNode(value: value, focusNode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin4FocusNode,
              style: TextStyle(fontSize: 24),
              autofocus: true,
              decoration: otpInputDecoration,
              obscureText: true,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
