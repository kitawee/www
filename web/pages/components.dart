import 'package:kitawi/kitawi.dart';

Component components() {
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
      Span(
        text: "1. Reactive",
        className: "text-sm font-bold",
      ),
      P("Reactive is a component that is used with Streams to update the UI when the stream emits a new value."),
      Span(
        text: "Learn more",
        className: "text-sm text-teal-500 cursor-pointer hover:underline",
        onClick: (p0) => router.push("/async?id=reactive"),
      ),
      Span(
        text: "2. Promise",
        className: "text-sm font-bold",
      ),
      P("Promise is a component that is used to fetch data from the server and update the UI when the data is available."),
      Span(
        text: "Learn more",
        className: "text-sm text-teal-500 cursor-pointer hover:underline",
        onClick: (p0) => router.push("/async?id=promise"),
      ),
      Span(
        text: "3. Builder",
        className: "text-sm font-bold",
      ),
      P("Builder is a component that is used to build components and pass down context to the children."),
      P("The context can be used to perform actions like updating the UI, fetching data, and more."),
      Span(
        text: "Learn more",
        className: "text-sm text-teal-500 cursor-pointer hover:underline",
        onClick: (p0) => router.push("/state"),
      ),
      Span(
        text: "4. PageView",
        className: "text-sm font-bold",
      ),
      P("PageView is a component that is used to build pages. It is used in conjunction with the Page component and Router."),
      Span(
        text: "Learn more",
        className: "text-sm text-teal-500 cursor-pointer hover:underline",
        onClick: (p0) => router.push("/routing?id=pageview"),
      ),
      Span(
        text: "5. Page",
        className: "text-sm font-bold",
      ),
      P("Page is a component that is used to build pages. It is used in conjunction with the PageView component and Router."),
      P("Page passes down the parameters to the builder function."),
      Span(
        text: "Learn more",
        className: "text-sm text-teal-500 cursor-pointer hover:underline",
        onClick: (p0) => router.push("/routing?id=page"),
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
      Div(
        className: "w-full flex justify-between",
        children: [
          Div(
            onClick: (p0) => router.push("/installation"),
            className: "flex flex-row hover:text-teal-500",
            children: [
              Span(
                text: "chevron_left",
                className: "material-symbols-outlined cursor-pointer",
              ),
              Span(
                text: "Installation",
                className: "cursor-pointer",
              ),
            ],
          ),
          Div(
            onClick: (p0) => router.push("/state"),
            className: "flex flex-row cursor-pointer hover:text-teal-500 ",
            children: [
              Span(
                text: "State Management",
                className: "cursor-pointer",
              ),
              Span(
                text: "chevron_right",
                className: "material-symbols-outlined ",
              ),
            ],
          ),
        ],
      )
    ],
  );
}
