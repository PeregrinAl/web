import 'package:flutter/material.dart';
import 'package:web/constants.dart';

import 'header_with_search_box.dart';

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
