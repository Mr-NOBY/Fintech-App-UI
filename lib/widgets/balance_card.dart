import 'package:fintech_app/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Wrap(
      children: [
        SizedBox(
          height: 155, //MediaQuery.sizeOf(context).height * 0.21,
          width: MediaQuery.sizeOf(context).width,
          child: Card(
            child: CustomPaint(
              painter: BalanceCardPainter(),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Wrap(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Total Balance",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                        const Text(
                          "\$25,000.40",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "My Wallet",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                            IconButton(
                                onPressed: () {
                                  controller.selectedIndex.value = 1;
                                },
                                icon: const Icon(
                                  Icons.arrow_circle_right_rounded,
                                  color: Colors.white,
                                  size: 40,
                                )),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BalanceCardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paintBL = Paint()
      ..color = const Color.fromRGBO(70, 155, 136, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0;

    Paint paintTR = Paint()
      ..color = const Color.fromRGBO(55, 124, 200, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0;

    Paint paintR = Paint()
      ..color = const Color.fromRGBO(235, 184, 80, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0;

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          const Radius.circular(12)));
    canvas.clipPath(path);

    final edgePathBL = Path()
      ..moveTo(0, size.height * 0.824)
      ..quadraticBezierTo(size.width * 0.093, size.height * 0.754,
          size.width * 0.156, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(edgePathBL, paintBL);

    final edgePathR = Path()
      ..moveTo(size.width, size.height * 0.563)
      ..quadraticBezierTo(
          size.width * 0.858, size.height * 0.492, size.width * 0.887, 0)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(edgePathR, paintR);

    final edgePathTR = Path()
      ..moveTo(size.width * 0.745, 0)
      ..quadraticBezierTo(size.width * 0.773, size.height * 0.246,
          size.width * 0.8866, size.height * 0.21)
      // ..moveTo(size.width - 45, 30)
      ..quadraticBezierTo(
          size.width * 0.97, size.height * 0.21, size.width, size.height * 0.35)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(edgePathTR, paintTR);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
