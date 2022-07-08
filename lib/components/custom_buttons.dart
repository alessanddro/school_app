import 'package:flutter/material.dart';

import 'package:school_app/constants/global-constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;

  const DefaultButton({
    super.key,
    required this.onPress,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 0.1],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${title}",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
