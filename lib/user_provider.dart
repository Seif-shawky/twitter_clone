// import 'package:flutter/material.dart';
// import 'package:projectbased/model/user.dart';

// class UserProvider extends InheritedWidget {
//   final Widget child;
//   final UserService userService;
//   const UserProvider({
//     required this.userService,
//     super.key,
//     required this.child,
//   }) : super(child: child);

//   static UserService? of(BuildContext context) {
//     return context
//         .dependOnInheritedWidgetOfExactType<UserProvider>()
//         ?.userService;
//   }

//   @override
//   bool updateShouldNotify(covariant UserProvider oldWidget) {
//     return oldWidget.userService.user?.id != userService.user?.id;
//   }
// }

// class UserService {
//   User? _user;
//   User? get user => _user;
//   updateUser(User user) {
//     _user = user;
//   }
// }
