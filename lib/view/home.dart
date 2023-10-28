import 'package:dogiee/model/model.dart';
import 'package:dogiee/service/service.dart';
import 'package:dogiee/utils/widgets.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: FutureBuilder<List<ResponseModel>?>(
        future: ServiceClass().getDetails(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                final data = snapshot.data![index];
                return postContainer(context, data.breeds[0].description,
                    child: Image.network(data.url, fit: BoxFit.fill),
                    name: data.breeds[0].name,
                    lifeSpan: data.breeds[0].lifeSpan);
              },
            );
          }
        },
      ),
    )
        //  Consumer<CatProvider>(
        //   builder: (context, value, child) {
        //     return ListView.builder(
        //       itemCount: 6,
        //       itemBuilder: (context, index) {
        //         // final date= value.responseModel![index];
        //         return postContainer(
        //             context, "value.responseDetails![index].id.toString()",
        //             child: Image.network(value.responseDetails![index].url.toString())
        //             // child: TextButton(onPressed: () {
        //             //   value.getCatDetails();
        //             // }, child: Text("test"))
        //             );
        //       },
        //     );
        //   },
        // ),
        );
  }
}
