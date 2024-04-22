import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemBanner extends StatelessWidget {
  final String imgurl;
  final double aspectR;
  final bool onSale;
  final String originalPrice;
  final String salePrice;
  final String? urlhref;
  final String shopnow;

  const ItemBanner(
      {Key? key,
      this.imgurl =
          "https://m.media-amazon.com/images/I/61wJXyIAKwL.__AC_SX300_SY300_QL70_FMwebp_.jpg",
      required this.aspectR,
      this.onSale = false,
      this.originalPrice = "",
      this.salePrice = "",
      this.shopnow = "",
      this.urlhref})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchURL(urlhref!),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            AspectRatio(
                aspectRatio: aspectR,
                child: CachedNetworkImage(
                  placeholderFadeInDuration: Duration.zero,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: imgurl,
                  fit: BoxFit.fill,
                )
                // Image.network(
                //   imgurl,
                //   fit: BoxFit.fill,
                // ),
                ),
            Positioned(
              top: 1.0,
              left: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      shopnow,
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      elevation: MaterialStateProperty.all(0), // No shadow
                      overlayColor: MaterialStateProperty.all(
                          Colors.transparent), // No overlay color on press
                    ),
                    onPressed: () {
                      // Handle button press
                      // For example, you can open a URL:
                    },
                    child: Text(
                      "Shop now",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Positioned(
            //   top: 25,
            //   left: -20,
            //   child:
            // ),
            Positioned(
              bottom: 0,
              left: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (onSale)
                    Text(
                      originalPrice,
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        onSale ? salePrice : originalPrice,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      if (onSale)
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            originalPrice,
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                    ],
                  ),
                  if (onSale)
                    Text(
                      'Sale',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> launchURL(String urll) async {
    Uri url = Uri.parse(urll);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
