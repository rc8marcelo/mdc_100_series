import 'package:flutter/material.dart';

class FrontLayer extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const FrontLayer({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16,
      shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GestureDetector(
            onTap: onTap,
            behavior: HitTestBehavior.opaque,
            child: Container(
              height: 40,
              alignment: AlignmentDirectional.centerStart,
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
