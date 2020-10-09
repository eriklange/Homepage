import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:homepage/home/sections/section_shadow.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectTile extends StatefulWidget {
  final AssetImage image;
  final String title;
  final String summary;

  const ProjectTile({
    @required this.image,
    @required this.title,
    @required this.summary,
    Key key,
  }) : super(key: key);

  @override
  _ProjectTileState createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile>
    with TickerProviderStateMixin {
  static const Duration _animationDuration = Duration(milliseconds: 200);
  static const double _scaleLower = 0.9;
  static const double _scaleUpper = 1.0;

  AnimationController _controller;
  Animation<double> _animation;

  double _opacity = 0.0;

  void _onHoverToggle(bool hover) {
    setState(() {
      _opacity = hover ? 1.0 : 0.0;
    });

    if (hover) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  Widget _getContent(BuildContext context, bool smallScreen) {
    final ratio = smallScreen ? 0.9 : 0.4;
    final imageSize = MediaQuery.of(context).size.width * ratio;
    final tileHeight = imageSize * 1.3;

    return InkWell(
      onTap: () {},
      onHover: _onHoverToggle,
      child: ScaleTransition(
        scale: _animation,
        child: AnimatedContainer(
          duration: _animationDuration,
          decoration: BoxDecoration(boxShadow: [
            SectionShadow(shadowOpacity: _opacity),
          ]),
          child: SizedBox(
            height: tileHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: imageSize,
                  width: imageSize,
                  child: Image(
                    image: widget.image,
                  ),
                ),
                SizedBox(
                  width: imageSize,
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              AutoSizeText(
                                widget.summary,
                                style: Theme.of(context).textTheme.subtitle1,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: AnimatedOpacity(
                            duration: _animationDuration,
                            opacity: _opacity,
                            child: IconButton(
                              icon: Icon(
                                FontAwesome.long_arrow_right,
                              ),
                              onPressed: () {
                                print("Pressed");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: _animationDuration,
      vsync: this,
      value: _scaleLower,
      lowerBound: _scaleLower,
      upperBound: _scaleUpper,
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getContent(context, true),
      desktop: _getContent(context, false),
    );
  }
}
