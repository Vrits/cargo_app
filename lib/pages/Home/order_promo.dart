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
                        image: NetworkImage(
                            "https://source.unsplash.com/random/700x500/?city")),
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
                        image: NetworkImage(
                            "https://source.unsplash.com/random/700x500/?city")),
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
                        image: NetworkImage(
                            "https://source.unsplash.com/random/700x500/?city")),
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
                        image: NetworkImage(
                            "https://source.unsplash.com/random/700x500/?city")),
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
