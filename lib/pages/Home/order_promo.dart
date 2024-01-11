import 'package:flutter/material.dart';

class OrderPromo extends StatelessWidget {
  const OrderPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Sekarang',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Pilih layanan yang tersedia dari kami untuk pengirimanmu',
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                        height: 100, image: AssetImage('assets/img/ads.jpeg')),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                        height: 100, image: AssetImage('assets/img/ads.jpeg')),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                        height: 100, image: AssetImage('assets/img/ads.jpeg')),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                        height: 100, image: AssetImage('assets/img/ads.jpeg')),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
