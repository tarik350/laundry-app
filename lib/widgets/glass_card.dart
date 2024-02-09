import 'package:flutter/material.dart';

class GlassCards extends StatelessWidget {
  final String title;
  final String subtitle;
  const GlassCards({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: Colors.white.withOpacity(.5)),
          ),
          trailing: Radio(
            value: 'value',
            groupValue: "groupValue",
            onChanged: (value) {},
          ),
        ),
        const Divider(
          thickness: .3,
        )
      ],
    );
  }
}

Widget customeButton(String title) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(fontSize: 10),
      ));
}
