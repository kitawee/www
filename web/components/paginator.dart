import 'package:kitawi/kitawi.dart';

class Paginator extends Template {
  final ({String name, String path})? previous;
  final ({String name, String path})? next;

  Paginator({
    this.previous,
    this.next,
  }) : super(
          className: "w-full",
        ) {
    assert(
      previous != null || next != null,
      "Either previous or next must be provided",
    );
  }

  @override
  Component build(context) {
    return Div(
      className: "w-full flex  justify-between",
      children: [
        if (previous != null)
          Div(
            onClick: (p0) => router.push(previous!.path),
            className: "flex flex-row hover:text-teal-500",
            children: [
              Span(
                text: "chevron_left",
                className: "material-symbols-outlined cursor-pointer",
              ),
              Span(
                text: "${previous?.name}",
                className: "cursor-pointer",
              ),
            ],
          ),
        if (next != null)
          Div(
            onClick: (p0) => router.push(next!.path),
            className: "flex flex-row cursor-pointer hover:text-teal-500 ",
            children: [
              Span(
                text: "${next?.name}",
                className: "cursor-pointer",
              ),
              Span(
                text: "chevron_right",
                className: "material-symbols-outlined ",
              ),
            ],
          ),
      ],
    );
  }
}
