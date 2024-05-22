import 'package:flutter/material.dart';

class BottomReusable extends StatelessWidget {
  BottomReusable({
    super.key,
    this.icon,
    this.color,
    required this.backgroundColor,
    required this.text,
    this.imgUrl,
    this.isResponsive = false,
  });

  final IconData? icon;
  final Color? color;
  final Color backgroundColor;
  final bool isResponsive;
  final String? imgUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                ),
              ],
            ),
            child: isResponsive && imgUrl != null
                ? Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(imgUrl!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Icon(
                    icon,
                    color: backgroundColor,
                    size: 40,
                  ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
