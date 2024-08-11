import 'package:kitawi/kitawi.dart';

Pre code(
  String text, {
  String? className,
}) {
  final pre = Pre(
    className: "fira shj-lang-js $className",
    children: [
      Code(text, attributes: {
        "data-language": "javascript",
      }),
    ],
  )..addEventListener("dblClick", (event) => print("double clicked"));

  return pre;
}
