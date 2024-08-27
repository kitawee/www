import 'package:kitawi/kitawi.dart';

Component sidebar() {
  return Div(
    className: "hidden lg:w-1/4 xl:w-1/5 lg:flex flex-col gap-4",
    children: [
      Span(
        text: "GETTING STARTED",
        className: "text-sm font-bold my-2",
      ),
      Div(
        className: "flex flex-col gap-2",
        children: [
          Span(
            text: "Installation",
            className:
                "text-slate-500 hover:text-teal-500 cursor-pointer hover:underline",
            onClick: (p0) => router.push("/installation"),
          ),
          Span(
            text: "Components",
            className:
                "text-slate-500 hover:text-teal-500 cursor-pointer hover:underline",
            onClick: (p0) => router.push("/components"),
          ),
        ],
      ),
      Span(
        text: "CORE CONCEPTS",
        className: "text-sm font-bold my-2",
      ),
      Div(
        className: "flex flex-col gap-2",
        children: [
          Span(
            text: "Template",
            className:
                "text-slate-500 hover:text-teal-500 cursor-pointer hover:underline",
            onClick: (p0) => router.push("/template"),
          ),
          Span(
            text: "State Management",
            className:
                "text-slate-500 hover:text-teal-500 cursor-pointer hover:underline",
            onClick: (p0) => router.push("/state"),
          ),
          Span(
            text: "Async Rendering",
            className:
                "text-slate-500 hover:text-teal-500 cursor-pointer hover:underline",
            onClick: (p0) => router.push("/async"),
          ),
          Span(
            text: "Routing",
            className:
                "text-slate-500 hover:text-teal-500 cursor-pointer hover:underline",
            onClick: (p0) => router.push("/routing"),
          ),
        ],
      ),
    ],
  );
}
