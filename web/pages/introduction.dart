import 'package:kitawi/kitawi.dart';
import '../components/code.dart';

Component introduction() {
  int counter = 0;
  return Div(
    className: "w-full flex flex-col gap-4",
    children: [
      Span(
        text: "Introduction",
        className: "text-2xl font-bold",
      ),
      Div(
        className: "w-full flex flex-col gap-4",
        children: [
          Div(
            className:
                "bg-red-50 border-red-200 border p-4 rounded flex-row flex items-center gap-4 flex-wrap",
            children: [
              Span(
                className: "material-symbols-outlined",
                text: "info",
              ),
              Span(
                text:
                    "Kitawi is still in development and not yet published to pub.dev",
              ),
              Span(
                text: "Learn more",
                className: "text-teal-500 cursor-pointer hover:underline",
              )
            ],
          )
        ],
      ),
      P("Kitawi is a web library for building web applications using Dart programming language. It is built as a wrapper around the web library to provide a more declarative way of building web applications."),
      P("Kitawi supports Wasm out of the box and can be used with anny of the packages from pub.dev."),
      Span(
        text: "Why Kitawi?",
        className: "text-sm font-bold",
      ),
      P("Here is an example:"),
      code("""
int counter = 0;

Builder(
    builder: (context) => Button(children: [
      Span(text: "Counter: \$counter"),
    ], 
    onClick: () {
      counter++;
      context.update();
    }
  )
)
"""),
      P("This is a simple example of a counter that increments when a button is clicked. The counter is updated using the context.update() method."),
      P("Here is the rendered output:"),
      Builder(
        id: "counter",
        className: "w-full bg-slate-50 border-slate-200 border p-4 rounded",
        builder: (ctx) => Button(
          className: "bg-teal-500 text-white px-4 py-2 rounded w-full",
          children: [Span(text: "Counter: $counter")],
          onClick: (e) {
            counter++;
            ctx.update();
          },
        ),
      ),
      Div(
        className:
            "bg-blue-50 border-blue-200 border p-4 rounded flex-row flex items-center gap-4 flex-wrap",
        children: [
          Span(
            className: "material-symbols-outlined",
            text: "info",
          ),
          Div(className: "flex flex-col gap-2", children: [
            Span(
              text:
                  "The state is scoped to the builder component, any component outside the builder will not have access to the state hence wont be re-rendered.",
            ),
            Span(
              text: "For example: Counter: $counter",
              className: "text-blue-500 cursor-pointer hover:underline",
            ),
            Span(
              text:
                  "The counter above will not be updated when the button is clicked.",
            )
          ]),
          Span(
            text: "Learn more",
            className: "text-teal-500 cursor-pointer hover:underline",
          )
        ],
      ),
      P(
        "The above snippet shows Kitawi's fundamental principle of building performant web applications; ",
      ),
      Span(
        text: "1. Reactivity",
        className: "text-sm font-bold",
      ),
      P("Kitawi uses a reactive system to update the UI when the state changes. This is done by calling the context.update() method to re-render the component.",
          className: "px-4 "),
      P(
        "A utility method find(selector) is also provided to find an element by its selector.",
        className: "px-4 ",
      ),
      Span(
        text: "2. Components",
        className: "text-sm font-bold",
      ),
      P(
        "Kitawi provides a set of components that can be used to build web applications. These components are built using the web library and can be used with any package from pub.dev.",
        className: "px-4 ",
      ),
      Hr(
        className: "my-4",
      ),
      Div(
        className: "w-full flex justify-end",
        children: [
          Div(
            className: "flex flex-row hidden",
            children: [
              Span(
                text: "chevron_left",
                className: "material-symbols-outlined cursor-pointer",
              ),
              Span(
                text: "Getting Started",
                className: "cursor-pointer",
              ),
            ],
          ),
          Div(
            onClick: (p0) => router.push("/installation"),
            className: "flex flex-row cursor-pointer hover:text-teal-500 ",
            children: [
              Span(
                text: "Installation",
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
