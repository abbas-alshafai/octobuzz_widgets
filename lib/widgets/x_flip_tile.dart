import 'package:buzz_utils/buzz_utils.dart';
import 'package:flip_card/flip_card.dart';

import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

import 'x_flip_tile_back.dart';
import 'x_flip_tile_front.dart';

class XFlipTile extends StatefulWidget {

  const XFlipTile({
      Key? key,
      this.flipDuration = 500,
      required this.title,
      this.icon,
      this.backCardWidgets,
      this.onPressed
      })
      : super(key: key);

  final VoidCallback? onPressed;
  final String title;
  final IconData? icon;
  final int flipDuration;
  final List<Widget>? backCardWidgets;

  @override
  _XFlipTileState createState() => _XFlipTileState();
}

class _XFlipTileState extends State<XFlipTile>
    with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<double> _curvedAnimation;

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(milliseconds: widget.flipDuration),
        vsync: this);
    _curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _flip(bool reverse) {
    if (_animationController.isAnimating) return;
    if (reverse) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPressed != null
        ? GestureDetector(
            onTap: widget.onPressed,
            child: FlipCard(
              // animationController: _curvedAnimation,
              key: cardKey,
              front: _Card(
                frontTitle: widget.title,
                frontIcon: widget.icon,
             // onTap: () => _flip(true),
              ),
              back: SizedBox(),
            ),
          )
        : FlipCard(
            // animationController: _curvedAnimation,
            front: _Card(
              frontTitle: widget.title,
              frontIcon: widget.icon,
              // onTap: () {
              //   _flip(true);
              //   cardKey.currentState?.toggleCard();
              // },
            ),
            back: _Card(
              isBack: true,
              backCardWidgets: widget.backCardWidgets,
              // onTap: () {
              //   _flip(false);
              //   cardKey.currentState?.toggleCard();
              // },
            ),
          );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    Key? key,
      this.onTap,
      this.isBack = false,
      this.frontTitle,
      this.frontIcon,
      this.backCardWidgets
      })
      : super(key: key);

  final String? frontTitle;
  final IconData? frontIcon;
  final GestureTapCallback? onTap;
  final bool isBack;
  final List<Widget>? backCardWidgets;

  @override
  Widget build(BuildContext context) {
    if(isBack)
      assert(ListUtils.instance.isNotEmpty(backCardWidgets));
    else
      assert(StringUtils.instance.isNotBlank(frontTitle));

    return Container(
      // TODO measurements
      constraints: BoxConstraints(maxWidth: 180, maxHeight: 180),
      child: Card(
        elevation: 4,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                ThemeFactory.instance.getTheme().gradientOne,
                ThemeFactory.instance.getTheme().gradientTwo,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.white.withOpacity(0.1),
              highlightColor: Colors.transparent,
              borderRadius: BorderRadius.circular(48), // was 8
              onTap: onTap,
              child: Center(
                child: isBack
                    ? XFlipTileBack(
                        widgets: backCardWidgets ?? [],
                      )
                    : XFlipTileFront(
                        title: frontTitle!,
                        icon: frontIcon,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
