import 'dart:io';
import 'package:image/image.dart' as img;

void main() {
  final file = File('assets/icons/app_icon.png');
  final original = img.decodeImage(file.readAsBytesSync())!;

  // Gawa ng 1024x1024 na black canvas
  final canvas = img.Image(width: 1024, height: 1024);
  img.fill(canvas, color: img.ColorRgb8(0, 0, 0));

  // I-resize ang icon sa 60% ng canvas — may padding na
  final size = (1024 * 0.60).toInt(); // ← ayusin mo dito ang size
  final resized = img.copyResize(original, width: size, height: size);

  // I-center ang icon sa canvas
  final x = (1024 - size) ~/ 2;
  final y = (1024 - size) ~/ 2;
  img.compositeImage(canvas, resized, dstX: x, dstY: y);

  // I-save
  File('assets/icons/app_icon_fg.png')
    .writeAsBytesSync(img.encodePng(canvas));
  
  print('Done! Saved to assets/icons/app_icon_fg.png');
}