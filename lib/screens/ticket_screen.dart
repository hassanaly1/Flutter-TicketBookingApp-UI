import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                Gap(40),
                Text(
                  "Tickets",
                  style: Styles.headlineStyle1,
                ),
                Gap(20),
                AppTicketsTab(firstTab: "Upcoming", secondTab: "Previous"),
                Gap(20),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: TicketView(ticket: ticketList[0]),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Flutter DB",
                                style: Styles.headlineStyle3,
                              ),
                              Text(
                                "Passenger",
                                style: Styles.headlineStyle4,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "5221 3875675",
                                style: Styles.headlineStyle3,
                              ),
                              Text(
                                "Passport",
                                style: Styles.headlineStyle4,
                              ),
                            ],
                          )
                        ],
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "648740 73202348",
                                style: Styles.headlineStyle3,
                              ),
                              Text(
                                "Number of E-ticket",
                                style: Styles.headlineStyle4,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "B2GS28",
                                style: Styles.headlineStyle3,
                              ),
                              Text(
                                "Booking Code",
                                style: Styles.headlineStyle4,
                              ),
                            ],
                          )
                        ],
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    "*** 2483",
                                    style: Styles.headlineStyle3,
                                  )
                                ],
                              ),
                              Gap(5),
                              Text(
                                "Payment Method",
                                style: Styles.headlineStyle4,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$249.99",
                                style: Styles.headlineStyle3,
                              ),
                              Text(
                                "Price",
                                style: Styles.headlineStyle4,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //Barcode Widget
                Container(
                  color: Colors.white,
                  //margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://facebook.com',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              left: 10,
              top: 415,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 415,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
          ],
        ));
  }
}
