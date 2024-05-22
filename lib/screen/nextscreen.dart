import 'package:flutter/material.dart';
import 'package:walletapui/components/detail_reusable.dart';
import 'package:walletapui/components/textfile.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Icon(Icons.add_road),
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
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SendBottom(
                      icon: Icons.call_made_outlined,
                      text: 'To your Own account',
                      color: Colors.red,
                      backgroundColor: Colors.orange,
                    ),
                    SendBottom(
                      icon: Icons.call_received_outlined,
                      text: 'To other Bank account',
                      color: Colors.blue,
                      backgroundColor: Colors.red,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 20, top: 20),
                          child: const Text(
                            "Send to your mobile contract",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const Textfield(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const DetailReusable(
                  isBank: true,
                  size: 70,
                  text: "Thida",
                  title: "****807789",
                  img:
                      "https://imgs.search.brave.com/FCr13Wlzps2_D8r0oBwWidQPX_Uy7g_gulVJhuIxT-o/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE0/OTQ3OTAxMDgzNzct/YmU5YzI5YjI5MzMw/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TW54OGNH/VnljMjl1SlRJd2FX/TnZibnhsYm53d2ZI/d3dmSHg4TUE9PQ.jpeg",
                ),
                const DetailReusable(
                  Isactive: true,
                  isBank: true,
                  size: 70,
                  text: "Pu Jonh",
                  title: "****9087665",
                  img:
                      "https://imgs.search.brave.com/IrqtAixXZ61-nNCteEhDipBL-3l7l_0fnpbmJudTe4k/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/MDYyNzc4ODYxNjQt/ZTI1YWEzZjRlZjdm/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TVRGOGZI/SmxZV3dsTWpCd1pY/SnpiMjU4Wlc1OE1I/eDhNSHg4ZkRBPQ.jpeg",
                ),
                const DetailReusable(
                  isBank: true,
                  size: 70,
                  text: "Sok Na",
                  title: "****095678",
                  img:
                      "https://imgs.search.brave.com/sVrOyB2bbfZktZ-nfQyPdZicJWrYFjKAkaE13WwD_Ec/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9oYXBw/eS1wZXJzb24tbGF1/Z2hpbmctc2VsZWN0/aXZlLWZvY3VzLXNl/bGN0aXZlLWNyb3Bl/ZC1pbWFnZS0xMTEx/ODgyNTguanBn",
                ),
              ],
            )),
      )),
    );
  }
}

class SendBottom extends StatelessWidget {
  const SendBottom({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    required this.backgroundColor,
  });
  final IconData icon;
  final String text;
  final Color color;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(blurRadius: 40, offset: Offset(5, 10)),
          ]),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(blurRadius: 30, offset: Offset(5, 5))
                ]),
            child: Icon(
              icon,
              size: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
