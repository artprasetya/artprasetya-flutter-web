import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;

  const CenteredView({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    bool isMobile = deviceType == DeviceScreenType.mobile;
    EdgeInsetsGeometry padding = isMobile
        ? const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          )
        : const EdgeInsets.symmetric(
            horizontal: 70,
            vertical: 60,
          );

    return Container(
      padding: padding,
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
