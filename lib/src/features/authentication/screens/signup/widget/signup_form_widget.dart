import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinabags/src/routing/routing.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
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
                  labelText: tFullName,
                  labelStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  hintText: tFullName,
                  hintStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  border: const OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.person_outline_rounded, size: size.height * 0.025,
                  ),
                ),
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
                  labelText: tEmail,
                  labelStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  hintText: tEmail,
                  hintStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  border: const OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email_outlined, size: size.height * 0.025,
                  ),
                ),
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
                  labelText: tPhoneNo,
                  labelStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  hintText: tPhoneNo,
                  hintStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  border: const OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.phone, size: size.height * 0.025,
                  ),
                ),
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
                  labelText: tPassword,
                  labelStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  hintText: tPassword,
                  hintStyle: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: size.height * 0.020
                  ),
                  border: const OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.fingerprint, size: size.height * 0.025,
                  ),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight - 10),
            SizedBox(
              height: size.height * 0.070,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  tSignup.toUpperCase(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
