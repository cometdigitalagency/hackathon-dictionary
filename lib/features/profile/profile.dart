import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/constant/constant_font_style.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                "https://scontent.fvte2-1.fna.fbcdn.net/v/t39.30808-6/397790148_1817637155342788_4647236502653244642_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeESTiPDeeGu5wgSBBkkAVqcTp5yMdXJrSNOnnIx1cmtIyAeDq6O24fXk554ZDDcMW6dGuD-NFqs_tIsO9NpIsz8&_nc_ohc=orsrc-q5PMQAX8h2-1m&_nc_ht=scontent.fvte2-1.fna&oh=00_AfBfHGx23RMjGvEJ2Fn1cSoimfLdPNRJ9bwSeA1UoMQpLw&oe=655C9A40",
              ),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ສະບາຍດີ", style: ConstantText.small),
            Text("Sitthamin Sitthilard", style: ConstantText.big),
          ],
        )
      ],
    );
  }
}