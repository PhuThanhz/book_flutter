import 'package:book_flutter/Components/PrimaryButton.dart';
import 'package:book_flutter/Pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 500,
          padding: const EdgeInsets.all(20),
          color: Theme.of(context).colorScheme.primary,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Image.asset(
                    "Assets/Images/book.png",
                    width: 380,
                  ),
                  const SizedBox(height: 60),
                  Text(
                    "Hiu - Book Store",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    child: Text(
                      "Khám phá thế giới sách với chúng tôi! Tìm cuốn sách hoàn hảo cho bạn và trải nghiệm đọc hoặc nghe sách một cách tuyệt vời nhất.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Disclaimer",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(10),
          child: PrimaryButton(
            btnName: "CONTINUE",
            ontap: () {
              Get.offAll(const HomePage());
            },
          ),
        )
      ],
    ));
  }
}
