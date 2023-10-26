import 'package:dogiee/controller/controller.dart';
import 'package:dogiee/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 240, 227, 110),
        title: const Text("Cat Fact"),
        centerTitle: true,
      ),
      body: Consumer<CatProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              // final date= value.responseModel![index];
              return postContainer(
                  context, "value.responseDetails![index].id.toString()",
                  child: Image.network(value.responseDetails![index].url.toString())
                  // child: TextButton(onPressed: () {
                  //   value.getCatDetails();
                  // }, child: Text("test"))
                  );
            },
          );
        },
      ),
    );
  }
}
