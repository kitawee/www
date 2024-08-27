import 'package:kitawi/kitawi.dart';
import '../components/paginator.dart';

class KitawiComponents extends Template {
  KitawiComponents()
      : super(
          className: "w-full",
        );

  List<Map<String, dynamic>> components = [
    {
      "name": "Reactive",
      "description":
          "Reactive is a component that is used with Streams to update the UI when the stream emits a new value.",
      "learn_more": "/async?id=reactive",
    },
    {
      "name": "Promise",
      "description":
          "Promise is a component that is used to fetch data from the server and update the UI when the data is available.",
      "learn_more": "/async?id=promise",
    },
    {
      "name": "Builder",
      "description":
          "Builder is a component that is used to build components and pass down context to the children.",
      "learn_more": "/state",
    },
    {
      "name": "PageView",
      "description":
          "PageView is a component that is used to build pages. It is used in conjunction with the Page component and Router.",
      "learn_more": "/routing?id=pageview",
    },
    {
      "name": "Page",
      "description":
          "Page is a component that is used to build pages. It is used in conjunction with the PageView component and Router.",
      "learn_more": "/routing?id=page",
    },
  ];

  @override
  Component build(context) {
    return Div(
      className: "w-full flex flex-col gap-4",
      children: [
        Span(
          text: "Components",
          className: "text-2xl font-bold",
        ),
        Div(
          className: "w-full flex flex-col gap-4",
          children: [
            Div(
              className:
                  "bg-teal-50 border-teal-200 border p-4 rounded flex-row flex items-center gap-4 flex-wrap",
              children: [
                Span(
                  className: "material-symbols-outlined",
                  text: "info",
                ),
                Span(
                  text:
                      "All components are built as documented as in the MDN Web Docs.",
                ),
                Span(
                  text: "Learn more",
                  onClick: (p0) => window.open(
                    "https://developer.mozilla.org/en-US/docs/Web/HTML/Element",
                    "_blank",
                  ),
                  className: "text-teal-500 cursor-pointer hover:underline",
                )
              ],
            )
          ],
        ),
        P("Kitawi also provides a set of components that can be used to build web applications that are not available in the MDN Web Docs."),
        ...components.map(
          (e) => Div(
            className: "flex flex-col gap-2 my-1",
            children: [
              Span(
                text: e["name"],
                className: "text-sm font-bold",
              ),
              P(e["description"]),
              Span(
                text: "Learn more",
                className:
                    "text-sm text-teal-500 cursor-pointer hover:underline",
                onClick: (p0) => router.push(e["learn_more"]),
              ),
            ],
          ),
        ),
        Hr(
          className: "my-4",
        ),
        Span(
          text:
              "Kitawi also provides the following core elements out of the box:",
          className: "d",
        ),
        Div(
          className: "w-full flex flex-wrap gap-4",
          children: [
            ...[
              "Div",
              "Span",
              "P",
              "Image",
              "Input",
              "Button",
              "Hr",
              "Code",
              "Pre",
              "Video",
              "Audio",
              "Modal",
              "Html",
              "I"
            ].map(
              (e) => Span(
                text: e,
                className: "text-sm border border-slate-300 p-2 rounded-2xl",
              ),
            )
          ],
        ),
        Span(
          text: "Learn more",
          className: "text-sm text-teal-500 cursor-pointer hover:underline",
          onClick: (p0) => window.open(
            "https://pub.dev/documentation/kitawi/latest/",
            "_blank",
          ),
        ),
        Hr(
          className: "my-4",
        ),
        Paginator(
          previous: (name: "Installation", path: "/installation"),
          next: (name: "Template", path: "/template"),
        ),
      ],
    );
  }
}
