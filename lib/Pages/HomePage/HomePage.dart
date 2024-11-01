import 'package:book_flutter/Components/BookCard.dart';
import 'package:book_flutter/Components/BookTitle.dart';
import 'package:book_flutter/Controller/BookController.dart';
import 'package:book_flutter/Models/Data.dart';
import 'package:book_flutter/Pages/BookDetails/BookDetails.dart';
import 'package:book_flutter/Pages/HomePage/Widgets/AppBar.dart';
import 'package:book_flutter/Pages/HomePage/Widgets/CategoryWidget.dart';
import 'package:book_flutter/Pages/HomePage/Widgets/MyInputTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:book_flutter/Components/MyDrawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BookController bookController = Get.put(BookController());
    bookController.getUserBook();
    return Scaffold(
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              color: Theme.of(context).colorScheme.primary,
              // height: 500,
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          HomeAppBar(),
                          SizedBox(height: 50),
                          Row(
                            children: [
                              Text(
                                "Good Morining✌️",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                              Text(
                                "Nitish",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Time to read book and enhance your knowledge",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          MyInputTextField(),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryData
                                  .map(
                                    (e) => CategoryWidget(
                                        iconPath: e["icon"]!,
                                        btnName: e["lebel"]!),
                                  )
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Trending",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Obx(
                        () => Row(
                          children: bookController.bookData
                              .map(
                                (e) => BookCard(
                                  title: e.title!,
                                  coverUrl: e.coverUrl!,
                                  ontap: () {
                                    Get.to(BookDetails(
                                      book: e,
                                    ));
                                  },
                                ),
                              )
                              .toList(),
                        ),
                      )),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Obx(() => Column(
                        children: bookController.bookData
                            .map(
                              (e) => BookTitle(
                                ontap: () {
                                  Get.to(BookDetails(book: e));
                                },
                                title: e.title!,
                                coverUrl: e.coverUrl!,
                                author: e.author!,
                                price: e.price!,
                                rating: e.rating!,
                                totalRating: 12,
                              ),
                            )
                            .toList(),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
