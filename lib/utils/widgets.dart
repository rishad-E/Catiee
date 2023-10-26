import 'package:dogiee/utils/const.dart';
import 'package:flutter/material.dart';

Widget postContainer(BuildContext context,String text,{Widget? child}){
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
    height: MediaQuery.of(context).size.height * 0.4,
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.22,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: kblack.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
         alignment: Alignment.topLeft,
         child: child,
        ),
        const SizedBox(height: 10),
        Text(text)
      ],
    ),
  );
}
