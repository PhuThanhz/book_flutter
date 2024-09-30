import 'package:book_flutter/Config/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("Assets/Icons/dashboard.svg"),
        Text(
          "E - BOOK",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.surface,
              ),
        ),
        CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: const Text(
            "P",
            style: TextStyle(
              color: primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
