import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter();
    return AutoTabsScaffold(
        routes: const [
          BookFeedRoute(),
          BookListRoute(),
          MyInfoRoute()
        ],
      bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'book feed'),
                BottomNavigationBarItem(icon: Icon(Icons.book), label: 'book list'),
                BottomNavigationBarItem(icon: Icon(Icons.man), label: 'my info'),
              ]
          );
      },
    );

    // return AutoTabsRouter(
    //     routes: const [
    //       BookFeedRoute(),
    //       BookListRoute(),
    //       MyInfoRoute()
    //     ],
    //     builder: (context, child, animation) {
    //       final tabRouter = AutoTabsRouter.of(context);
    //
    //       return Scaffold(
    //         body: FadeTransition(
    //           opacity: animation,
    //           child: child,
    //         ),
    //         bottomNavigationBar: BottomNavigationBar(
    //           currentIndex: tabRouter.activeIndex,
    //           onTap: (index) {
    //             tabRouter.setActiveIndex(index);
    //           },
    //           items: const [
    //             BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'book feed'),
    //             BottomNavigationBarItem(icon: Icon(Icons.book), label: 'book list'),
    //             BottomNavigationBarItem(icon: Icon(Icons.man), label: 'my info'),
    //           ],
    //         ),
    //       );
    //     }
    // );
  }
}
