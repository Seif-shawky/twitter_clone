import 'package:flutter/material.dart';
import 'package:projectbased/model/user.dart';

class UserProvider extends InheritedWidget {
  final Widget child;
  final User user;
  const UserProvider({
    required this.user,
    super.key,
    required this.child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant oldWidget) {
    throw UnimplementedError();
  }
}
