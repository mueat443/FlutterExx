import 'package:flutter/material.dart';


class BaseElevation {
  BaseElevation._();

  static const elevationlight1 = <BoxShadow>[
    BoxShadow(
      // color: BaseColors.tempBaseElevation,
      color: Color.fromRGBO(27, 28, 25, 0.15),
      offset: Offset(0.0, 4.0),
      blurRadius: 4.0,
    ),
  ];

  static const elevationlight2 = <BoxShadow>[
    BoxShadow(
      // color: BaseColors.tempBaseElevation,
      color: Color.fromRGBO(27, 28, 25, 0.15),
      offset: Offset(0.0, 4.0),
      blurRadius: 8.0,
    )
  ];

  static const elevationlight3 = <BoxShadow>[
    BoxShadow(
      // color: BaseColors.tempBaseElevation,
      color: Color.fromRGBO(27, 28, 25, 0.07),
      offset: Offset(0.0, 3.0),
      blurRadius: 16.0,
    )
  ];

  static const elevationlight4 = <BoxShadow>[
    BoxShadow(
      // color: BaseColors.tempBaseElevation,
      color: Color.fromRGBO(27, 28, 25, 0.18),
      offset: Offset(0.0, 8.0),
      blurRadius: 24.0,
    ),
  ];

  static const elevationlight5 = <BoxShadow>[
    BoxShadow(
      // color: BaseColors.tempBaseElevation,
      color: Color.fromRGBO(27, 28, 25, 0.2),
      offset: Offset(0.0, 8.0),
      blurRadius: 32.0,
    )
  ];
}
