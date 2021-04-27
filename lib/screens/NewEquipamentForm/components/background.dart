import 'package:flutter/material.dart';

import 'getImage.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            child: child,
          ),
          if (image == null)
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0, right: 10.0),
                child: FloatingActionButton(
                  child: new Icon(
                    Icons.camera_alt_rounded,
                  ),
                  onPressed: () => getImage(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
