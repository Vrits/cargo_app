import 'package:flutter/material.dart';

class PromoList extends StatelessWidget {
  const PromoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ada yang baru dari kami',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Yuk pantau info & promo terbaru dari kami',
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            // padding: EdgeInsets.only(left: 10, right: 10),
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
                        height: 100,
                        image: AssetImage('assets/img/ads-wide.jpg')),
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
                        height: 100,
                        image: AssetImage('assets/img/ads-wide.jpg')),
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
                        height: 100,
                        image: AssetImage('assets/img/ads-wide.jpg')),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                        height: 100,
                        image: AssetImage('assets/img/ads-wide.jpg')),
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
