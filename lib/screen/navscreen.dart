import 'dart:math';

import 'package:flutter/material.dart';
import 'package:walletapui/components/bottom_reusable.dart';
import 'package:walletapui/components/detail_reusable.dart';

class NavscreenPage extends StatelessWidget {
  const NavscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin:
                const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const Icon(Icons.add_road),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "Send",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Money",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Add Your Bank Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Why to add bank account",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Without adding your bank account you are not able to send money",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://imgs.search.brave.com/G_o7S3aKLszru1NKx-H6vEyfNAK9HvQIFufpDWiGszI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdC5k/ZXBvc2l0cGhvdG9z/LmNvbS8xNTAwODc2/LzI5NTUvaS80NTAv/ZGVwb3NpdHBob3Rv/c18yOTU1NDQyNy1z/dG9jay1waG90by1p/bnNlcnRpbmctY3Jl/ZGl0LWNhcmQtaW50/by1iYW5rLmpwZw",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomReusable(
                      isResponsive: true,
                      backgroundColor: Colors.white,
                      imgUrl:
                          "https://imgs.search.brave.com/47e2iCeJ12gPBpz8fS1R9GFs61QbyxT6JT9HG06n1fU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9hc3Nl/dC5icmFuZGZldGNo/LmlvL2lkdVRzcm4z/NXEvaWRablAtcERW/Ty5qcGVnP3VwZGF0/ZWQ9MTcwNzIxNTgw/MDQ5NA",
                      text: 'ABA',
                    ),
                    BottomReusable(
                      isResponsive: true,
                      backgroundColor: Colors.white,
                      imgUrl:
                          "https://ibccambodia.com/wp-content/uploads/2023/05/Platinum.jpg.webp",
                      text: 'Wings',
                    ),
                    BottomReusable(
                      isResponsive: true,
                      backgroundColor: Colors.white,
                      imgUrl:
                          "https://imgs.search.brave.com/SB-laA5kxlMFCz9dSHhOX6dsTIelS8re0MJNALeCJ3M/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTM0/NDA0NDYzNS9waG90/by93b21hbi11c2lu/Zy1hdG0uanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPTVwY3E4/azVDNzlaZ3R5MWN3/TGhabmNxYzlTT3Bi/WjdkWjh0bm4yMTdU/VWc9",
                      text: 'ABA',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 300,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(blurRadius: 20),
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "Select Your Bank",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DetailReusable(
                          isBank: true,
                          size: 70,
                          text: "ABA",
                          title: "****45678",
                          img:
                              "https://imgs.search.brave.com/47e2iCeJ12gPBpz8fS1R9GFs61QbyxT6JT9HG06n1fU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9hc3Nl/dC5icmFuZGZldGNo/LmlvL2lkdVRzcm4z/NXEvaWRablAtcERW/Ty5qcGVnP3VwZGF0/ZWQ9MTcwNzIxNTgw/MDQ5NA",
                        ),
                        DetailReusable(
                          isBank: true,
                          size: 70,
                          text: "ABA",
                          title: "****45678",
                          img:
                              "https://imgs.search.brave.com/47e2iCeJ12gPBpz8fS1R9GFs61QbyxT6JT9HG06n1fU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9hc3Nl/dC5icmFuZGZldGNo/LmlvL2lkdVRzcm4z/NXEvaWRablAtcERW/Ty5qcGVnP3VwZGF0/ZWQ9MTcwNzIxNTgw/MDQ5NA",
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
