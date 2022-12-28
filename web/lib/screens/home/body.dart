import 'package:flutter/material.dart';
import 'package:web/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [headerWithTheSearchBox(size: size)],
      ),
    );
  }
}

class headerWithTheSearchBox extends StatelessWidget {
  const headerWithTheSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: defaultPadding, bottom: 36 + defaultPadding),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: firstColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Hi, shooter!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Color.fromARGB(251, 208, 243, 200),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: firstColor.withOpacity(0.9))
                  ]),
              child: TextField(
                onSubmitted: (value) {},
                decoration: InputDecoration(
                  hintText: "Hello!",
                  hintStyle: TextStyle(
                    color: firstColor.withOpacity(0.3),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
