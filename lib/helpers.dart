import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the color property of the paint
    paint.color = Colors.deepPurple;
    var rect = Rect.fromLTWH(-size.width / 4, -size.height / 2, size.width * 1.5, size.height * 2);
    canvas.drawOval(rect, paint);

    rect = Rect.fromLTWH(-size.width / 4, -size.height / 2, size.width * 1.5, size.height);
    canvas.drawRect(rect, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

enum ConfirmAction { CANCEL, ACCEPT }
Future<ConfirmAction> confirmDialog(BuildContext context, {String title, String content}) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title ?? 'Confirm action'),
        content: Text(content ?? ''),
        actions: <Widget>[
          FlatButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.CANCEL);
            },
          ),
          FlatButton(
            child: const Text('ОК'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.ACCEPT);
            },
          )
        ],
      );
    },
  );
}
