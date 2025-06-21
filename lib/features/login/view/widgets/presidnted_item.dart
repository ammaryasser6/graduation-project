import 'package:flutter/material.dart';

class PresidntedItem extends StatelessWidget {
  PresidntedItem({super.key, required this.images, required this.name,this.onTap});
  String images;
  String name;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          color: const Color.fromARGB(0, 255, 255, 255),
          child: Column(
            children: [
              Image.asset(
                images,
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "Business Consultant",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        ElevatedButton(
          onPressed: onTap,
          child: Text(
            "veiw details",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.deepPurpleAccent),
          ),
        )
      ],
    );
  }
}
