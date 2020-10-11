import 'package:flutter/material.dart';
import 'package:homepage/routes/home/sections/projects/project_tile_footer.dart';
import 'package:homepage/widgets/shadow_overlay.dart';

class ProjectTile extends StatefulWidget {
  final Image image;
  final String title;
  final String summary;
  final Color footerColor;
  final VoidCallback onTap;

  const ProjectTile({
    @required this.image,
    @required this.title,
    @required this.summary,
    @required this.onTap,
    this.footerColor = Colors.white,
    Key key,
  }) : super(key: key);

  @override
  _ProjectTileState createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile>
    with TickerProviderStateMixin {
  static const Duration _animationDuration = Duration(milliseconds: 200);
  static const double _scaleLower = 0.95;
  static const double _scaleUpper = 1.0;

  AnimationController _controller;
  Animation<double> _animation;

  double _opacity = 0.0;

  BoxDecoration get decoration {
    return BoxDecoration(
      boxShadow: [
        ShadowOverlay(shadowOpacity: _opacity),
      ],
    );
  }

  Widget get footer {
    return ProjectTileFooter(
      title: widget.title,
      summary: widget.summary,
      animationDuration: _animationDuration,
      opacity: _opacity,
      color: widget.footerColor,
    );
  }

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
    return InkWell(
      onTap: widget.onTap,
      onHover: _onHoverToggle,
      child: ScaleTransition(
        scale: _animation,
        child: AnimatedContainer(
          duration: _animationDuration,
          decoration: decoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              widget.image,
              footer,
            ],
          ),
        ),
      ),
    );
  }
}
