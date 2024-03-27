import 'package:flutter/material.dart';
import 'package:organico/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "color": const Color(0xffE3553F).withOpacity(0.15),
        "name": "Paprika",
        "weight": "2 Kilogram",
        "imageUrl": "assets/paprika.png",
      },
      {
        "color": const Color(0xff76B226).withOpacity(0.15),
        "name": "Broccoli",
        "weight": "3 Kilorgram",
        "imageUrl": "assets/broccoli.png",
      },
      {
        "color": const Color(0xff3F7D3C).withOpacity(0.15),
        "name": "Lettuce",
        "weight": "4 Kilogram",
        "imageUrl": "assets/lettuce.png",
      },
      {
        "color": const Color(0xffE9B04F).withOpacity(0.15),
        "name": "Potato",
        "weight": "4 Kilorgram",
        "imageUrl": "assets/potato.png",
      },
      {
        "color": const Color(0xffEA812F).withOpacity(0.15),
        "name": "Carrot",
        "weight": "5 Kilogram",
        "imageUrl": "assets/carrot.png",
      },
      {
        "color": const Color(0xff97031D).withOpacity(0.15),
        "name": "Red Onion",
        "weight": "8 Kilogram",
        "imageUrl": "assets/onion.png",
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(9),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: 196,
                color: data[index]['color'],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  data[index]['imageUrl'],
                                  width:
                                      MediaQuery.of(context).size.width * 0.20,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.favorite_border_outlined),
                                  iconSize: 30,
                                  color: Colors.red,
                                  alignment: Alignment.topLeft,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              data[index]['name'],
                              style: poppinsTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  data[index]['weight'],
                                  style: nunitoTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
