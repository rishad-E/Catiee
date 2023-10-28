import 'package:flutter/material.dart';

Widget postContainer(BuildContext context, String text,
    {Widget? child, String? name, String? lifeSpan}) {
  return Container(
    margin: const EdgeInsets.fromLTRB(15, 15, 15, 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 2),
        BoxShadow(
          color: Colors.white,
        ),
      ],
    ),
    height: MediaQuery.of(context).size.height * 0.35,
    child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.22,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: child,
              ),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Name: $name",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("Life-Span: $lifeSpan",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400))
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(text),
        )
      ],
    ),
  );
}
