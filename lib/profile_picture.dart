import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: Colors.black,
      child: CircleAvatar(
        radius: 98,
        backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
      ),
    );
  }
}
