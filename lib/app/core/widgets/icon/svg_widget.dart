import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/svg_constants.dart';

class SvgWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final String path;
  final BoxFit? fit;

  const SvgWidget({
    required this.path,
    this.width,
    this.height,
    this.color,
    this.fit,
    super.key,
  });

  factory SvgWidget.check({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.check,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.checked({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.checked,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.checkedEmpty({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.checkedEmpty,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.clipboards({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.clipboards,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.dots({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.dots,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.pencil({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.pencil,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.plus({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.plus,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.rectanglePlus({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.rectanglePlus,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.search({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.search,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.todo({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.todo,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.trash({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.trash,
      width: width,
      height: height,
      color: color,
    );
  }

  factory SvgWidget.unchecked({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgWidget(
      path: SvgConstants.unchecked,
      width: width,
      height: height,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        path,
        fit: fit ?? BoxFit.cover,
        colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        width: width,
        height: height,
      ),
    );
  }
}
