import 'package:book_flutter/Components/BookCard.dart';
import 'package:book_flutter/Components/BookTitle.dart';
import 'package:book_flutter/Models/Data.dart';
import 'package:book_flutter/Pages/BookDetails/BookDetails.dart';
import 'package:book_flutter/Pages/HomePage/Widgets/AppBar.dart';
import 'package:book_flutter/Pages/HomePage/Widgets/CategoryWidget.dart';
import 'package:book_flutter/Pages/HomePage/Widgets/MyInputTextField.dart';
import 'package:book_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              color: Theme.of(context).colorScheme.primary,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const HomeAppBar(),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Text(
                        "Good Morning✌️",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.surface,
                            ),
                      ),
                      Text(
                        "Thanh Phu",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.surface,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Time to read book and enhance your knowledge",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.surface,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const MyInpuTextField(),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Topics",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categoryData
                          .map(
                            (e) => CategoryWidget(
                                iconPath: e["icon"]!,
                                btnName: e["lebel"]!), // Giữ nguyên tên bạn đặt
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookData
                          .map(
                            (e) => BookCard(
                              title:
                                  e.title ?? 'Unknown Title', // Kiểm tra null
                              coverUrl: e.coverUrl ?? '', // Kiểm tra null
                              ontap: () {
                                Get.to(const BookDetails());
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                      children: bookData
                          .map((e) => BookTitle(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              author: e.author!,
                              price: e.price!,
                              rating: e.rating!,
                              totalRating: e.numberofRating!))
                          .toList())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
