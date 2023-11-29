import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.070,
              child: TextFormField(
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    fontSize: size.height * 0.020
                ),
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_outline_outlined),
                    labelText: tEmail,
                    labelStyle: Theme.of(context).textTheme.headline1?.copyWith(
                        fontSize: size.height * 0.020
                    ),
                    hintText: tEmail,
                    hintStyle: Theme.of(context).textTheme.headline1?.copyWith(
                        fontSize: size.height * 0.020
                    ),
                    border: const OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            SizedBox(
              height: size.height * 0.070,
              child: TextFormField(
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    fontSize: size.height * 0.020
                ),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.fingerprint),
                  labelText: tPassword,
                  labelStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  hintText: tPassword,
                  hintStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp, size: size.height * 0.025,),
                  ),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight - 28),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {}, child: Text(tForgetPassword, style: TextStyle(fontSize: size.height * 0.020),)),
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.070,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tLogin.toUpperCase(), style: TextStyle(fontSize: size.height * 0.022),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}