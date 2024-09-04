import 'package:flutter/material.dart';
import 'chm_constants.dart';
class ChmFlag extends StatelessWidget {
  final String flags;
  final double size;
  final bool circleShape;

  /// ChmFlag() when passing string can use 'country_code ISO Alpha2 or Alpha3 and island to passing island name'
  const ChmFlag({
    Key? key,
    required this.flags,
    this.size = 30,
    this.circleShape = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChmConstants.countryCodeISO_2_3[flags.toUpperCase()] == null
        ? Image.asset(
            'lib/icons/chm_image/image_square_default_myais.png',
            height: size,
            width: size,
          )
        // ? ChmIcon(keyIconName: 'image_square_default_myais',width: size,height: size,)
        : circleShape == true
            ? 
            Image.asset(
                'lib/icons/chm_flag/circle/${ChmConstants.countryCodeISO_2_3[flags.toUpperCase()]}.webp',
                height: size,
                width: size,
              )
            : Image.asset(
                'lib/icons/chm_flag/rect/${ChmConstants.countryCodeISO_2_3[flags.toUpperCase()]}.webp',
                height: size,
                width: size,
              );
  }
}
