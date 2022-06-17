import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref){
  return 0;
});

class Counter extends ConsumerWidget{
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(counterProvider.notifier);

    return Center(
      child: Column(
        children: [
          Text("Counter : ${provider.state}"),
          ElevatedButton(
              onPressed: () {
                provider.state++;
              },
              child: const Text("Button")
          )
        ],
      )
    );
  }
}