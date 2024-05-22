import 'dart:math';

import 'package:flutter/material.dart';

class DetailReusable extends StatelessWidget {
  const DetailReusable({
    super.key,
    this.icon,
    required this.text,
    required this.title,
    this.backgroundColor,
    this.img,
    this.isBank = false,
    this.size = 100.0,
    this.Isactive = false,
    this.color,
  });

  final IconData? icon;
  final String text;
  final String title;
  final Color? backgroundColor;
  final Color? color;
  final String? img;
  final bool isBank;
  final double? size;
  final bool Isactive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Isactive ? Colors.white : null,
          boxShadow: Isactive
              ? [
                  BoxShadow(blurRadius: 20),
                ]
              : null,
          borderRadius: Isactive ? BorderRadius.circular(20) : null),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: size,
                    width: size,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: isBank
                        ? Container(
                            height: size,
                            width: size,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(img!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : Container(
                            height: size,
                            width: size,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: backgroundColor),
                            child: Icon(icon, color: color, size: 50),
                          )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      title,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_right,
            size: 70,
          ),
        ],
      ),
    );
  }
}
