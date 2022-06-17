import 'package:flutter/material.dart';

Widget ListViewExample() {
  return ListView(
    children: [
      Container(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            print('test');
          }, child: const Text('test A'),
          style: ElevatedButton.styleFrom(
            primary: Colors.purple
          )
        )
      ),
      Container(
          height: 50,
          color: Colors.amber,
          child: const Center(child: Text('test B'))
      ),
      Container(
          height: 50,
          color: Colors.amber,
          child: const Center(child: Text('test C'))
      )
    ],
  );
}

final List<String> listSample = ['A', 'B', 'C'];

Widget ListViewBuilder() {
  return ListView.builder(
      itemCount: listSample.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('test2 ${listSample[index]} clicked')));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple
                ),
                child: Text('test2 ${listSample[index]}')
            )
        );
      });
}

Widget ListViewSeperateed() {
  return ListView.separated(
      itemBuilder: (BuildContext context, int index){
        return Container(
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('test2 ${listSample[index]} clicked')));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple
                ),
                child: Text('test2 ${listSample[index]}')
            )
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: 1,color: Colors.blue);
      },
      itemCount: listSample.length);
}