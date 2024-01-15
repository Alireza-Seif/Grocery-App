
import 'package:flutter/material.dart';

import '../../constants/themes/app_theme.dart';


class GoogleSignInButton extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
        child: Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints( 
            maxWidth: 380.0,
            maxHeight: 60.0,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.g_translate,size: 26,color: Colors.black,),
              SizedBox(
                width: 60,
              ),
              Text(
                'Create an account',
                style: MyTextStyles.styleText1
              ),
              SizedBox(
                width: 60,
              ),
            ],
          ),
        ),
    );
  }
}
