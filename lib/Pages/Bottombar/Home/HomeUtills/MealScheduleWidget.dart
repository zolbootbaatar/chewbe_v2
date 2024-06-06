import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MealSchedule extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Text('Meal Schedule',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ListTile(
          title: Text('06:00 - 09:59'),
          subtitle: Text('First Meal'),
          leading: Icon(Icons.food_bank),
        ),
        ListTile(
          title: Text('10:00 - 13:59'),
          subtitle: Text('Second Meal'),
          leading: Icon(Icons.food_bank),
        ),
      ],
    );
  }
}
