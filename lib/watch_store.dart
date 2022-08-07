import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:watch_store/components/tab_indicator.dart';
import 'package:watch_store/components/watch_card.dart';
import 'package:watch_store/constants/colors.dart';

class WatchStore extends StatefulWidget {
  const WatchStore({Key? key}) : super(key: key);

  @override
  State<WatchStore> createState() => _WatchStoreState();
}

class _WatchStoreState extends State<WatchStore> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    // var size = MediaQuery.of(context).size;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey.shade100,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.density_medium_rounded,
                        size: 30,
                        color: AppColor.textPrimary,
                      ),
                      Container(
                        height: 50,
                        width: 280,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(children: [
                          Icon(
                            IconlyBroken.search,
                            color: AppColor.textPrimary,
                          )
                        ]),
                      ),
                    ]),

                // Headline
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    "Find your suitable watch now.",
                    style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: AppColor.textPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 41,
                            height: 1.4)),
                  ),
                ),

                // Tabs
                Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    unselectedLabelStyle: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.4)),
                    labelStyle: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.4)),
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(right: 20),
                    labelColor: AppColor.primary,
                    unselectedLabelColor: AppColor.textSecondary,
                    indicator: TabIndicator(color: AppColor.primary),
                    tabs: const [
                      Tab(text: "Smart Watch"),
                      Tab(text: "Casio"),
                      Tab(text: "Tissot"),
                      Tab(text: "Seiko"),
                    ],
                    controller: tabController,
                  ),
                ),

                // Tab Views
                SizedBox(
                  height: 450,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 15,
                          childAspectRatio: 5 / 7,
                          children: const [
                            WatchCard(
                              image: "apple.png",
                              title: "Apple Watch",
                              subtitle: "Series 7",
                              price: 799,
                            ),
                            WatchCard(
                              image: "galaxy.png",
                              title: "Galaxy Watch",
                              subtitle: "Series 4",
                              price: 599,
                            ),
                            WatchCard(
                              image: "mi.png",
                              title: "Mi Watch",
                              subtitle: "All Series",
                              price: 299,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(),
                      const SizedBox(),
                      const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
