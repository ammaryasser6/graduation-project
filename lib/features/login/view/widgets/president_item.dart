import 'package:flutter/material.dart';

class PresidentItem extends StatelessWidget {
  const PresidentItem(
      {super.key, required this.image, required this.text, this.onTap, this.color});
  final String image;
  final String text;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:color?? Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 50,
            height: 100,
          ),
          Text(text),
          Icon(Icons.star),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: onTap, child: Text("view detales")),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
