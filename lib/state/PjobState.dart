import 'package:flutter/material.dart';

class _InheritedPjob extends InheritedWidget {
  // Data is your entire state. In our case just 'pjob'
  final StateContainerState data;

  // You must pass through a child and your state.
  _InheritedPjob({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  // This is a built in method which you can use to check if
  // any state has changed. If not, no reason to rebuild all the widgets
  // that rely on your state.
  @override
  bool updateShouldNotify(_InheritedPjob oldWidget) {
    return true;
  }
}

// state container rebuilds widgets subscribed to it when data changes
class PjobStateContainer extends StatefulWidget {
  // You must pass through a child.
  final Widget child;
  final String pjobNumnber;

  PjobStateContainer({Key key, @required this.child, this.pjobNumnber})
      : super(key: key);

  // This is the secret sauce. Write your own 'of' method that will behave
  // Exactly like MediaQuery.of and Theme.of
  // It basically says 'get the data from the widget of this type.

  static StateContainerState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedPjob)
            as _InheritedPjob)
        .data;
  }

  @override
  StateContainerState createState() => StateContainerState();
}

// state class ndomunoitika yese wena
class StateContainerState extends State<PjobStateContainer> {
  // Whichever properties you wanna pass around your app as state
  String pjobNumnber;

  void updatePjobNumber({pjob}) {
    setState(() {
      pjobNumnber = pjob;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new _InheritedPjob(
      data: this,
      child: widget.child,
    );
  }
}
