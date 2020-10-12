import 'package:homepage/widgets/my_color_scheme.dart';
import 'package:homepage/widgets/paragraph_text.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:homepage/widgets/section/text_section.dart';
import 'package:homepage/widgets/sectioned_view.dart';
import 'package:homepage/widgets/text_entry.dart';

class OldTimer extends SectionedView {
  static const String route = "oldTimer";

  @override
  List<Section> get sections => [
        TextSection(
          title: "About",
          color: MyColorScheme.colors[1],
          textEntries: [
            TextEntry(
              title: "Under Development",
              paragraphs: [
                ParagraphContent(
                  body:
                      "Old Timer is an app currently under development by a friend of mine and myself. It is not of top priority, as I am currently studying fulltime.",
                ),
                ParagraphContent(
                  subtitle: "Making a loved one's days easier",
                  body:
                      "The idea of the app is to function as a planner tool for one or more next of kin of a relative / friend who needs more assistance than normal.",
                ),
                ParagraphContent(
                  subtitle: "Platforms",
                  body:
                      "Old Timer will be released for both Android and iOS, as it written in Flutter, a mobile cross-platform framework by Google.",
                ),
              ],
            )
          ],
        ),
        TextSection(
          color: MyColorScheme.colors[0],
          title: "Background",
          textEntries: [
            TextEntry(
              title: "Motivation",
              paragraphs: [
                ParagraphContent(
                  subtitle: "Fun Learning",
                  body:
                      "One of my hobbies is to develop apps, which makes this fun for me. I also wish to expand my knowledge, and developing apps is a perfect way of doing so",
                ),
                ParagraphContent(
                  subtitle: "Pair Programming",
                  body:
                      "This is the largest project that I've worked on that is not apart of my job. My friend and I work closely together, which means that I learn a lot developing this app.",
                ),
              ],
            )
          ],
        ),
      ];
}
