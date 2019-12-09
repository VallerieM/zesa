import 'package:flutter/material.dart';

class _MeterNumber extends InheritedWidget {
  // Data is your entire state. In our case just 'meterno'
  final StateContainerState data;

  // You must pass through a child and your state.
  _MeterNumber({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  // This is a built in method which you can use to check if
  // any state has changed. If not, no reason to rebuild all the widgets
  // that rely on your state.
  @override
  bool updateShouldNotify(_MeterNumber oldWidget) {
    return true;
  }
}

// state container rebuilds widgets subscribed to it when data changes
class BillingStateContainer extends StatefulWidget {
  // You must pass through a child.
  final Widget child;
  final String meterNumber;

  BillingStateContainer({Key key, @required this.child, this.meterNumber})
      : super(key: key);

  // This is the secret sauce. Write your own 'of' method that will behave
  // Exactly like MediaQuery.of and Theme.of
  // It basically says 'get the data from the widget of this type.

  static StateContainerState of([BuildContext context, bool rebuild = true]) {
    return (rebuild
            ? context.inheritFromWidgetOfExactType(_MeterNumber) as _MeterNumber
            : context.ancestorWidgetOfExactType(_MeterNumber) as _MeterNumber)
        .data;
  }

  @override
  StateContainerState createState() => StateContainerState();
}

// state class ndomunoitika yese wena
class StateContainerState extends State<BillingStateContainer> {
  // Whichever properties you wanna pass around your app as state
  String meterNumber;

  void updateMeterNumber({meterno}) {
    setState(() {
      meterNumber = meterno;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new _MeterNumber(
      data: this,
      child: widget.child,
    );
  }
}
