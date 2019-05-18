import 'package:design/models/Conversation.dart';
import 'package:design/theme/colors.dart';
import 'package:flutter/material.dart';

class MessageView extends StatelessWidget {

  Chat message;
  MessageView(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        color: lightColor,
        shape: ChatBubbleShape(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(message.message, style: TextStyle(color: Colors.black),),
        ),
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
    return null;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
    Paint paint = Paint();
    paint.color = lightSecondaryColor;

    Path path = Path();

    path.moveTo(5, 0);
    path.lineTo(rect.width - 5, 0);
    path.quadraticBezierTo(rect.width - 5, 0, rect.width - 5, rect.height);
    path.lineTo(5, rect.height);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  ShapeBorder scale(double t) {
    return null;
  }


}