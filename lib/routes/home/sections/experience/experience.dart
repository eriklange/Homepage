import 'package:flutter/material.dart';
import 'package:homepage/widgets/my_color_scheme.dart';
import 'package:homepage/widgets/paragraph_text.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:homepage/widgets/text_entry.dart';

class Experience extends Section {
  Experience({Key key}) : super(title: "Experience", key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColorScheme.colors[1],
      child: Column(
        children: [
          TextEntry(
            title: "2016 - 2019",
            paragraphs: [
              ParagraphContent(
                subtitle: "University of Essex",
                body:
                    "During these years I attended University of Essex in England, where I graduated with a Bachelor's degree in Computer Science with Honors. This was an exciting period of my life, as I got to experience living in a new country, with new cultures, and meeting all sorts of different people with unique backgrounds. The outcome of my studies at University of Essex was a strong baseline of knowledge that I've used in both further education and work. I studied there until June 2019, when I graduated with a distinction, and left with a magnitude of experiences.",
              ),
              ParagraphContent(
                subtitle: "Kværner - Intern",
                body:
                    "During the summers of 2018 and 2019 I was lucky enough to work at Kværner as an intern at their Digitalization Programme. During the two summers I worked with a variety of highly talented people who taught me a lot about software development, methodologies, practices, etc. After the internship in 2019, I continued working part-time as a software developer on one of their projects.",
              ),
            ],
          ),
          TextEntry(
            title: "2019 - 2021",
            paragraphs: [
              ParagraphContent(
                subtitle: "University of Oslo",
                body:
                    "After graduating from Universty of Essex, I wanted to experience how it was like to study for a Master's degree back home in Norway. I am originally from a municipality called Bærum which is located just outside Oslo, which led me to chose a university close by. University of Oslo became the natural choice for me, as they seemed to have the most natural degree for me - 'Informatics: Programming and System Architecture'. I am currently on my 2nd and last year of the programme.",
              ),
              ParagraphContent(
                subtitle: "Nanyang Technological University, Singapore",
                body:
                    "A friend of mine and I spent our 2nd semester of our Master's programme in Singapore, where we attended Nanyang Technological University.",
              ),
              ParagraphContent(
                subtitle: "Kværner - Team Lead",
                body:
                    "After being an intern and a part-time developer at Kværner the 2 previous years, I was asked if I wanted to be the team lead during their anual internship-camp. Of course I said yes, and was the team lead on one of their projects during the summer of 2020, leading 5 interns. This was very exciting as I had little prior experience in any leadership roles.",
              ),
            ],
          ),
          TextEntry(
            title: "2021 -",
            paragraphs: [
              ParagraphContent(
                subtitle: "Sopra Steria",
                body:
                    "From August 2021 I will begin my journey as an IT Consultant at Sopra Steria in Oslo. This is something I am looking forward to a lot, as I am excited to begin working with talented people and exciting projects.",
              )
            ],
          ),
        ],
      ),
    );
  }
}
