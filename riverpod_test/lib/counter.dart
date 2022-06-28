import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref){
  return 0;
});

final couterWatchProvider = Provider<String>((ref){
  final counter = ref.watch(counterProvider);

  return counter > 3 ? '3보다 크다!' : '3보다 작다!';
});

class Counter extends ConsumerWidget{
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(counterProvider);
    final mst = ref.watch(couterWatchProvider);

    return Center(
      child: Column(
        children: [
          Text("Counter : ${provider}"),
          Text("mst : ${mst}"),
          ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).state++;
              },
              child: const Text("Button1")
          )
        ],
      )
    );
  }
}