import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75, //MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        child: CustomPaint(
          painter: CardEdgePainter(),
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.green,
                    size: 40,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Wrap(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Income',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            '\$ 20,000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ]),
                VerticalDivider(
                  indent: 6,
                  endIndent: 6,
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.red,
                    size: 40,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Wrap(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Outcome',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            '\$ 17,000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardEdgePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paintTL = Paint()
      ..color = const Color.fromRGBO(191, 162, 202, 1)
      ..strokeWidth = 3.0
      ..style = PaintingStyle.fill;

    Paint paintBR = Paint()
      ..color = const Color.fromRGBO(245, 216, 203, 1)
      ..strokeWidth = 3.0
      ..style = PaintingStyle.fill;

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          const Radius.circular(12)));
    canvas.clipPath(path);

    final edgePathTL = Path()
      ..moveTo(size.width * 0.0567, 0)
      ..quadraticBezierTo(
          size.width * 0.0425, size.height * 0.224, 0, size.height * 0.224)
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(edgePathTL, paintTL);

    // canvas.drawCircle(Offset(size.width, size.height), 15, paintTL); //does the job but not the exactly same
    final edgePathBR = Path()
      ..moveTo(size.width * 0.955, size.height)
      ..quadraticBezierTo(size.width * 0.955, size.height * 0.761, size.width,
          size.height * 0.761)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(edgePathBR, paintBR);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

//  var path = Path()
//       // ..moveTo(size.width, size.height)
//       ..moveTo(size.width - 20, size.height)
//       ..quadraticBezierTo(
//           size.width - 20, size.height - 20, size.width, size.height - 20)
//       // ..lineTo(size.width, size.height - 30)
//       ..lineTo(size.width, size.height)
//       ..close();

//     canvas.drawPath(path, paint);