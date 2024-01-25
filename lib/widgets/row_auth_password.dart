import 'package:flutter/material.dart';

import '../constants/themes/app_theme.dart';
import 'my_toggle.dart';

class RowRemember extends StatelessWidget {
  const RowRemember({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomToggle(),
                            
                            const Text(
                              'Remember me',
                              style: MyTextStyles.bodyText,
                            ),
                            const SizedBox(width: 71,),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Forgot password',style: TextStyle(fontSize: 15),),
                            )
                          ],
                        );
  }
}