import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore_for_file: must_be_immutable

class InputWidget extends HookConsumerWidget {
  InputWidget({this.icon, this.color, this.content, this.title, super.key});

  String? icon;
  Color? color;
  String? title;
  String? content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/chewbepage/$icon.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              const Icon(
                Icons.chevron_right,
                color: Color(0xff8C8C8C),
                size: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title!,
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            content!,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
