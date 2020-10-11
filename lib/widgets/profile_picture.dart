import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final double maxHeight;

  const ProfilePicture({@required this.maxHeight, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: maxHeight,
            maxWidth: constraints.maxWidth,
          ),
          child: CircleAvatar(
            radius: double.infinity,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image(
                image: AssetImage('assets/images/profile_picture.jpg'),
              ),
            ),
          ),
        );
      },
    );
  }
}
