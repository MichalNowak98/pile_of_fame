import 'package:flutter/material.dart';

class PaintedMiniaturesCounterWidget extends StatelessWidget {
  const PaintedMiniaturesCounterWidget({
    required int paintedQuantity,
    required int overallQuantity,
    required double size,
    Key? key,
  })  : _paintedCount = paintedQuantity,
        _overallCount = overallQuantity,
        _size = size,
        super(key: key);
  final int _paintedCount;
  final int _overallCount;
  final double _size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomPaint(
      painter: DiagonalLinePainter(),
      child: SizedBox(
        height: _size,
        width: _size,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "$_paintedCount",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: quantityColor(ratio: _paintedCount / _overallCount),
                  ),
                ),
                const SizedBox(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(),
                Text("$_overallCount"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color quantityColor({required double ratio}) {
    if (ratio < 0.5) {
      return Colors.red;
    } else if (ratio < 1) {
      return Colors.orange;
    } else {
      return Colors.green;
    }
  }
}

class DiagonalLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p1 = Offset(20, 80);
    const p2 = Offset(80, 20);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
