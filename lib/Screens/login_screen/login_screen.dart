import 'package:collage_management/Screens/home_screen/home_bteb.dart';
import 'package:collage_management/Screens/home_screen/home_screen.dart';
import 'package:collage_management/constants.dart';
import 'package:flutter/material.dart';

import '../../components/custom_buttons.dart';

late bool _passwordVissible;

class Loginscreen extends StatefulWidget {
  static String routeName = 'Loginscreen';

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _fornKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVissible = true;
  }
TextEditingController t1=TextEditingController();
TextEditingController t2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    // 'assets/images/splash.png',
                    'assets/images/collage_fci.png',
                    height: 250.0,
                    width: 300.0,
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hi",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w200,
                                  )),
                      Text("Student",
                          style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding / 6,
                  ),
                  Text('Sign in to continue',
                      style: Theme.of(context).textTheme.subtitle2)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
                color: kOtherColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    Form(
                      key: _fornKey,
                      child: Column(
                        children: [
                          sizedBox,
                          buildEmailField(),
                          sizedBox,
                          buildPasswordField(),
                          sizedBox,
                          DefaultButton(
                            onPress: () {
                              if (_fornKey.currentState!.validate() ) {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    Home2.routeName, (route) => false);
                              }


                            },
                            title: 'SIGN IN',
                            iconData: Icons.arrow_forward_outlined,
                          ),
                          sizedBox,
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forgot Password',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      controller:t1 ,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 22.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: "Mobile Number/Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }


      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      controller: t2,
      obscureText: _passwordVissible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 22.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVissible = !_passwordVissible;
            });
          },
          icon: Icon(
            _passwordVissible
                ? Icons.visibility_off_outlined
                : Icons.visibility_rounded,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 characters';
        }
      },
    );
  }
}
