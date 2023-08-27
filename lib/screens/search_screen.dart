import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';
import '../utils/app_styles.dart';
import '../utils/app_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "What are\n you looking for?",
              style: Styles.headlineStyle1.copyWith(fontSize: 35),
            ),
            Gap(AppLayout.getHeight(40)),
            const AppTicketsTab(
                firstTab: "Airline Tickets", secondTab: "Hotels"),
            Gap(AppLayout.getHeight(25)),
            const IconTextWidget(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(15)),
            const IconTextWidget(
                icon: Icons.flight_land_rounded, text: "Arrival"),
            Gap(AppLayout.getHeight(15)),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xD91130CE),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ))),
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming Flights",
                  style: Styles.headlineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print("ViewAll tapped");
                  },
                  child: Text(
                    "View All",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.42,
                  height: 425,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1),
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/sit.jpg"))),
                      ),
                      const Gap(15),
                      Text(
                        "20% discount on early bookings of this flight.Don't miss",
                        style: Styles.headlineStyle2,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: 200,
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              color: Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discounted\nfor Survey",
                                style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(10),
                              Text(
                                "Take the survey about our services and get discounts",
                                style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(
                                    width: 18, color: Color(0xFF189999))),
                          ),
                        )
                      ],
                    ),
                    Gap(10),
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: 200,
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 214, 93, 66),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discounted\nfor Survey",
                                style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(10),
                              Text(
                                "Take the survey about our services and get discounts",
                                style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(
                                  width: 18,
                                  color: Color.fromARGB(255, 207, 79, 51),
                                )),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
