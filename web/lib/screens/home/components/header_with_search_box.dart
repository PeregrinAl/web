import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/constants.dart';

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
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Container(
            height: size.height * 0.15,
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
            child: Column(
              children: [
                BoxWithInputField("Фамилия"),
                BoxWithInputField("Упражнение"),
                BoxWithInputField("Результат"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BoxWithInputField extends StatelessWidget {
  const BoxWithInputField(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      height: 57,
      decoration: BoxDecoration(
          color: Color.fromARGB(251, 208, 243, 200),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: firstColor.withOpacity(0.9))
          ]),
      child: InputField(this.text),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      child: SizedBox(
        child: TextField(
          onSubmitted: (value) {},
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: firstColor.withOpacity(0.3),
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
