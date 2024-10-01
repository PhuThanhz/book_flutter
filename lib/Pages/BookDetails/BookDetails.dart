import 'dart:ffi';
import 'package:book_flutter/Components/BackButton.dart';
import 'package:book_flutter/Config/Color.dart';
import 'package:book_flutter/Pages/BookDetails/BookActionBtn.dart';
import 'package:book_flutter/Pages/BookDetails/HeaderWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  //            height: 500,
                  color: primaryColor,
                  child: Row(
                    children: [
                      Expanded(
                        child: BookDeailsHeader(),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "About Book",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "mot doan van dai duoi nay mot doan van dai duoi nay mot doan van dai duoi nay mot doan van dai duoi nay",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "About Book",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "mot doan van dai duoi nay mot doan van dai duoi nay mot doan van dai duoi nay mot doan van dai duoi nay",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      BookActionBtn(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
