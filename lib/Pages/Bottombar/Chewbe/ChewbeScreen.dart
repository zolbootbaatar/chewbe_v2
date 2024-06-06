import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:chewbe_v2/Pages/Bottombar/Chewbe/Widget/CoverWidget.dart';
import 'package:chewbe_v2/Pages/Bottombar/Chewbe/Widget/InputsWidget.dart';

class ChewbePage extends HookConsumerWidget {
  const ChewbePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<InputData> inputs = [
      InputData(
        icon: 'meal',
        title: 'Meal',
        color: const Color(0xff52B952),
        content: 'aslkdjhflasdfhaldskfhlaksdhfalshfaklksdfhkjlas',
      ),
      InputData(
        icon: 'drink',
        title: 'Beverage',
        color: const Color(0xff5F93E5),
        content: 'aslkdjhflasdfhaldskfhlaksdhfalshfaklksdfhkjlas',
      ),
      InputData(
        icon: 'data',
        title: 'Physical Data',
        color: const Color(0xffDD7235),
        content: 'aslkdjhflasdfhaldskfhlaksdhfalshfaklksdfhkjlas',
      ),
      InputData(
        icon: 'activity',
        title: 'Activity',
        color: const Color(0xffDA5D8C),
        content: 'aslkdjhflasdfhaldskfhlaksdhfalshfaklksdfhkjlas',
      ),
      InputData(
        icon: 'bsl',
        title: 'BSL',
        color: const Color(0xffE05D5D),
        content: 'aslkdjhflasdfhaldskfhlaksdhfalshfaklksdfhkjlas',
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
          children: [
            const ChewbeCoverWidget(),
            Container(
              height: MediaQuery.of(context).size.height * 0.52,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: inputs.length,
                itemBuilder: (BuildContext context, int index) {
                  return InputWidget(
                    title: inputs[index].title,
                    color: inputs[index].color,
                    content: inputs[index].content,
                    icon: inputs[index].icon,
                  );
                },
              ),
            ),
            // InputWidget(),
          ],
        ),
      ),
    );
  }
}

class InputData {
  InputData({this.icon, this.color, this.content, this.title});

  String? icon;
  Color? color;
  String? title;
  String? content;
}
