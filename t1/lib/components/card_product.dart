import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final String image;
  final String productName;
  final String initialPrice;
  final String discountPrice;
  final String parcelPrice;
  final String parcelTimes;

  const CardProduct(
      {super.key,
      required this.image,
      required this.productName,
      required this.initialPrice,
      required this.discountPrice,
      required this.parcelPrice,
      required this.parcelTimes});

  @override
  Widget build(BuildContext context) {
    return (SizedBox(
      height: 300,
      child: Card(
        margin: const EdgeInsets.all(21.0),
        child: Row(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text(
                      productName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(36), bottom: Radius.circular(36)),
                        color: Color.fromARGB(255, 35, 122, 216)),
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 4.0, bottom: 4.0),
                    margin: const EdgeInsets.all(5.0),
                    child: const Text(
                      'Frete Grátis: Sul e Sudeste',
                      style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(
                      text: 'de ',
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: initialPrice,
                            style: const TextStyle(decoration: TextDecoration.lineThrough, color: Colors.red)),
                        const TextSpan(text: ' por:', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      '$discountPrice no PIX',
                      style: const TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '$parcelPrice ',
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'em até $parcelTimes', style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
