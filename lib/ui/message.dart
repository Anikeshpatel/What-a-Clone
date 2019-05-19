import 'package:design/models/Conversation.dart';
import 'package:design/theme/colors.dart';
import 'package:flutter/material.dart';

class MessageView extends StatelessWidget {

  Chat message;
  MessageView(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: message.author == "Anikesh" ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          Card(
            color: message.author == "Anikesh" ? lightColor : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(message.author, style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: message.author == "Anikesh" ? darkTextColor : primaryColor
                  ),),
                  Text(message.message),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChatBubbleShape extends ShapeBorder {

  final double curvMargin = 10;
  final double curvControllPoint = 2;

  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return getClip(Size(rect.width, rect.height));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {

  }

  @override
  ShapeBorder scale(double t) {
    return null;
  }

  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0 + curvMargin, 0);
    path.quadraticBezierTo(0 + curvControllPoint, 0 + curvMargin, 0, 0 + curvMargin);
    path.lineTo(0, size.height - curvMargin);
    path.quadraticBezierTo(0 + curvControllPoint, size.height - curvControllPoint, 0 + curvMargin, size.height);
    path.lineTo(size.width - curvMargin, size.height);
    path.quadraticBezierTo(size.width - curvControllPoint, size.height - curvControllPoint, size.width, size.height - curvMargin);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width - 1, 0 - curvMargin, size.width - curvMargin, 0 - curvMargin);
    path.lineTo(0 + curvMargin, 0);
    path.close();
    return path;
  }
}
