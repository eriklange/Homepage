import 'package:flutter/material.dart';
import 'package:homepage/home/sections/section.dart';
import 'package:homepage/ui_widgets/text_entry.dart';

class Experience extends Section {
  @override
  get title => "Experience";

  const Experience({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextEntry(
          title: "2016 - 2019",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fringilla, mi nec auctor condimentum, libero velit blandit lacus, vitae faucibus neque velit nec mauris. Proin pretium nisi tincidunt dui interdum, non dapibus enim faucibus. Suspendisse eros nisi, consectetur in lectus quis, fermentum sagittis tellus. Etiam et urna at sapien consequat luctus. Sed mollis feugiat sem nec lobortis. Quisque laoreet mi eget arcu gravida, id luctus lorem aliquam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi tincidunt, tortor vel condimentum euismod, ligula purus sollicitudin urna, at imperdiet tortor lacus non massa. Sed eros neque, laoreet id sollicitudin nec, pharetra vitae lectus. Aenean ultrices fringilla massa, non sollicitudin augue feugiat eget. Phasellus pretium aliquet nulla, non placerat erat.",
        ),
        TextEntry(
          title: "2016 - 2019",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fringilla, mi nec auctor condimentum, libero velit blandit lacus, vitae faucibus neque velit nec mauris. Proin pretium nisi tincidunt dui interdum, non dapibus enim faucibus. Suspendisse eros nisi, consectetur in lectus quis, fermentum sagittis tellus. Etiam et urna at sapien consequat luctus. Sed mollis feugiat sem nec lobortis. Quisque laoreet mi eget arcu gravida, id luctus lorem aliquam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi tincidunt, tortor vel condimentum euismod, ligula purus sollicitudin urna, at imperdiet tortor lacus non massa. Sed eros neque, laoreet id sollicitudin nec, pharetra vitae lectus. Aenean ultrices fringilla massa, non sollicitudin augue feugiat eget. Phasellus pretium aliquet nulla, non placerat erat.",
        ),
      ],
    );
  }
}
