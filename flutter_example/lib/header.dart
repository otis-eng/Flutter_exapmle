import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final witdh = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      height: 200,
      child: Row(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              )),
              width: witdh * 0.4,
              child: CircleAvatar(
                  maxRadius: 70,
                  child: Image.asset(
                    "assets/images/avatarProfile.png",
                  )),
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50))),
                width: witdh * 0.6,
                child: Column(
                  children: [
                    Text(
                      "Phan Kiều Phú",
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    Text("Junior:NodeJS,Flutter",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                    Text("🇻🇳 VN",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300)),
                    Text("📩 phankieuphu@gmail.com"),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
