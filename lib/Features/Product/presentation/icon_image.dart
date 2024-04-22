import 'package:flutter/material.dart';

class ColorSelectionWidget extends StatefulWidget {
  @override
  _ColorSelectionWidgetState createState() => _ColorSelectionWidgetState();
}

class _ColorSelectionWidgetState extends State<ColorSelectionWidget> {
  String selectedColor =
      "GRAPHIC FLORAL/DARK NAVY"; // Set the default selected color

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildColorOption("GRAPHIC FLORAL/DARK NAVY",
            "https://i5.walmartimages.com/asr/5ac9fa0f-c8c2-4a28-b16e-db863b3bd7e6.49cc155fca1d3aeb3649aaffc2ecdce3.jpeg?odnHeight=30&odnWidth=30&odnBg=FFFFFF"),
        _buildColorOption("LIGHT WASH",
            "https://i5.walmartimages.com/asr/0c5ae956-8596-4de1-86cb-d2d1e32dc86c.f6e1d5c0c05d3ab8e8b9d3714282ecfb.jpeg?odnHeight=30&odnWidth=30&odnBg=FFFFFF"),
        _buildColorOption("SMALL DITSY FIELD/BLUE COMET",
            "https://i5.walmartimages.com/asr/5b58526a-225f-4160-b7c6-948118d15754.0281e59c364e1cca0fae4e6d476f1952.jpeg?odnHeight=30&odnWidth=30&odnBg=FFFFFF"),
        _buildColorOption("SUNRISE DYE/PEACHY KEEN",
            "https://i5.walmartimages.com/asr/4096d01f-357d-4c62-a0d9-fa0832d7aaf9.e5574642c6502627402d15ab7f8f19be.jpeg?odnHeight=30&odnWidth=30&odnBg=FFFFFF"),
      ],
    );
  }

  Widget _buildColorOption(String colorName, String imageUrl) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = colorName;
        });
      },
      child: SizedBox(
        height: 50,
        width: 50, // Adjust as needed
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                    width: 1,
                    color: Colors.grey), // Adjust border properties as needed
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
