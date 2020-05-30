import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart' show IconData;
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show BitmapDescriptor;

extension IconsUtils on IconData {
  Future<BitmapDescriptor> toBitmapDescriptor(
    TextStyle style, {
    int size = 48,
    Offset offset = Offset.zero,
  }) async {
    final pictureRecorder = PictureRecorder();
    final canvas = Canvas(pictureRecorder);
    final textPainter = TextPainter(textDirection: TextDirection.ltr);
    final iconStr = String.fromCharCode(this.codePoint);
    textPainter.text = TextSpan(
      text: iconStr,
      style: style.copyWith(
        fontFamily: this.fontFamily,
        letterSpacing: 0.0,
        fontSize: size.toDouble(),
      ),
    );
    textPainter.layout();
    textPainter.paint(canvas, offset);
    final picture = pictureRecorder.endRecording();
    final image = await picture.toImage(size, size);
    final bytes = await image.toByteData(format: ImageByteFormat.png);
    return BitmapDescriptor.fromBytes(bytes.buffer.asUint8List());
  }
}
