import 'package:homepage/utils/asset_helper.dart';
import 'package:homepage/widgets/my_color_scheme.dart';
import 'package:homepage/widgets/paragraph_text.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:homepage/widgets/section/text_section.dart';
import 'package:homepage/widgets/sectioned_view.dart';
import 'package:homepage/widgets/text_entry.dart';

import 'sections/gallery.dart';
import 'sections/resources.dart';

class Fudge extends SectionedView {
  static const String route = "/fudge";

  @override
  List<Section> get sections => [
        TextSection(
          title: "About",
          color: MyColorScheme.colors[1],
          textEntries: [
            TextEntry(
              title: "Mobile Drinking Games",
              paragraphs: [
                ParagraphContent(
                    body:
                        "Fudge is an Android app that consists of 4 drinking games."),
                ParagraphContent(
                    subtitle: "Fudge the Dealer",
                    body:
                        "An obvious rip-off of the popular game 'Fuck the dealer', where iteratively one player is a dealer that might end up taking a few sips too many."),
                ParagraphContent(
                    subtitle: "Ring of Fire",
                    body:
                        "A popular game that consists of one player at a time that draws a card that is faced down on the table. Each card comes with instructions that the player must follow."),
                ParagraphContent(
                  subtitle: "Rampage",
                  body:
                      "A game of 'up or down'. One player at a time guesses if the next card is higher or lower than one of the currently visible cards on the table.",
                ),
                ParagraphContent(
                  subtitle: "Horse Race",
                  body:
                      "This is a game of betting. Each player bets on which horce (ace) reaches the finish line first.",
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
                    subtitle: "Learning",
                    body:
                        "As a fresh developer in 2014, I wanted to become a more skilled programmer, as well as to learn iOS development. The way I did that was to develop a drinking game app for iOS in Objective-C. I managed to complete the app within a few months, and I learned a lot from it. In 2019, I wanted to learn Android development, and I discoved Flutter, a mobile cross-platform framework made by Google. I decided to learn Flutter by developing the same app I made 5 years ago. Hopefully with better code quality this time around :)"),
                ParagraphContent(
                  subtitle: "Platforms",
                  body:
                      "Fudge is written in Flutter, which means that it works seamlessly on both iOS and Android devices, on both phones and tablets. It is released on Google Play Store as of today, but iOS was not that easy. Apple has recently introduced a stronger policy against alcohol, which means that Fudge cannot be published there. It is a shame, but what can you do.",
                ),
              ],
            )
          ],
        ),
        Resources(),
        Gallery(images: AssetHelper.fudgeGallery),
      ];
}
