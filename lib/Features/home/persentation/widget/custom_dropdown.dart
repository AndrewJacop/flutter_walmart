import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.height = 48,
    this.width,
    this.onTap,
    this.child,
  }) : super(key: key);

  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Material(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black12),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: child ?? const SizedBox(),
          ),
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
    this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            enabled: false,
            child: Container(
              width: double.infinity,
              child: Text("Menu Item 1"),
            ),
          ),
          PopupMenuItem(
            enabled: false,
            child: Container(
              width: double.infinity,
              child: Text("Menu Item 2"),
            ),
          ),
          PopupMenuItem(
            enabled: false,
            child: Container(
              width: double.infinity,
              child: Text("Menu Item 3"),
            ),
          ),
        ];
      },
      child: Container(
        width: width ?? 100,
        height: 100,
        decoration: ShapeDecoration(
          color: Colors.black26,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1.5,
              color: Colors.black26,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x11000000),
              blurRadius: 32,
              offset: Offset(0, 20),
              spreadRadius: -8,
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Menu',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
