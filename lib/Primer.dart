// import 'package:flutter/material.dart';
//
// class Primer extends StatefulWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   State<App> createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//   TextEditingController _controller = TextEditingController();
//   FocusNode _focusNode = FocusNode();
//
//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(onTextChanged);
//   }
//
//   void onTextChanged() {
//     print("Текст изменен: ${_controller.text}");
//   }
//
//   void onSubmit(String text) {
//     print("Текст отправлен: $text");
//   }
//
//   void setFocus() {
//     setState(() {
//       FocusScope.of(context).requestFocus(_focusNode);
//     });
//   }
//
//   void clearText() {
//     setState(() {
//       _controller.clear();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Пример TextField')),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               focusNode: _focusNode,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (text) {
//                 print("Изменился текст: $text");
//               },
//               onSubmitted: onSubmit,
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: setFocus,
//               child: Text('Установить фокус'),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: clearText,
//               child: Text('Очистить текст'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }