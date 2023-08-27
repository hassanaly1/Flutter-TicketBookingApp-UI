import 'dart:html';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Gap(40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/img_1.png")),
                      borderRadius: BorderRadius.circular(10)),
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book-Tickets",
                      style: Styles.headlineStyle1,
                    ),
                    Text(
                      "New-York",
                      style: Styles.headlineStyle3.copyWith(color: Colors.grey),
                    ),
                    const Gap(8),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xFFFEF4F3)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3, vertical: 3),
                      child: Row(children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          "Premium Status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ]),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
            const Gap(8),
            Divider(
              color: Colors.grey.shade500,
            ),
            const Gap(12),
            Stack(
              children: [
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius: BorderRadius.circular(18)),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xFF264CD2))),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        // ignore: sort_child_properties_last
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      const Gap(12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You've gor a new reward",
                            style: Styles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "You've 95 flights in a year",
                            style: Styles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9)),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const Gap(25),
            Text(
              "Accumulated Miles",
              style: Styles.headlineStyle2,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const Gap(30),
                  Text(
                    "138402",
                    style: TextStyle(
                        fontSize: 45,
                        color: Styles.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Miles accrued",
                        style: Styles.headlineStyle4.copyWith(fontSize: 16),
                      ),
                      Text(
                        "23 May 2021",
                        style: Styles.headlineStyle4.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                  const Gap(4),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "23 042",
                            style: Styles.headlineStyle3,
                          ),
                          Text(
                            "Miles",
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Airline CO",
                            style: Styles.headlineStyle3,
                          ),
                          Text(
                            "Recieved from",
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      )
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "24",
                            style: Styles.headlineStyle3,
                          ),
                          Text(
                            "Miles",
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "McDonal's",
                            style: Styles.headlineStyle3,
                          ),
                          Text(
                            "Recieved from",
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      )
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "52 340",
                            style: Styles.headlineStyle3,
                          ),
                          Text(
                            "Miles",
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Exuma",
                            style: Styles.headlineStyle3,
                          ),
                          Text(
                            "Recieved from",
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      )
                    ],
                  ),
                  const Gap(30),
                  Center(
                    child: Text("How to get more miles",
                        style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w500,
                        )),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
