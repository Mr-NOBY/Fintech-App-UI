import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: CustomPaint(
        painter: UserCardPainter(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      foregroundImage: AssetImage("assets/person.png"),
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: IconButton(
                        iconSize: 15,
                        color: Colors.white,
                        icon: const Icon(Icons.edit),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey.shade600,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Client Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "client.email@mail.com",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserCardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paintBL = Paint()
      ..color = const Color.fromRGBO(70, 155, 136, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0;

    Paint paintTR = Paint()
      ..color = const Color.fromARGB(255, 137, 70, 161)
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
