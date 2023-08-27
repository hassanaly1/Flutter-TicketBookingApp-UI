import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

class AppTicketsTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTab(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          children: [
            Container(
              width: size.width * .44,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white),
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Center(child: Text(firstTab)),
            ),
            Container(
              width: size.width * .44,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(50)),
                  color: Colors.transparent),
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Center(child: Text(secondTab)),
            )
          ],
        ),
      ),
    );
  }
}
