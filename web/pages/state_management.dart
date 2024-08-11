import 'package:kitawi/kitawi.dart';
import "../components/code.dart";

Component stateManagement() {
  int counter = 0;
  return Div(
    className: "w-full flex flex-col gap-4",
    children: [
      Span(
        text: "State Management",
        className: "text-2xl font-bold",
      ),
      Span(text: "1. Using Builder", className: "text-sm font-bold"),
      P("Kitawi provides a simple way to manage state in your application using the context.update() method."),
      P("The context is passed to the builder from a Builder component and can be used to update the UI when the state changes."),
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
      P("The state is scoped to the builder component, any component outside the builder will not have access to the state hence wont be re-rendered."),
      P("For example: Counter: $counter"),
      P("The counter above will not be updated when the button is clicked."),
      Span(
        text: "2. Using find(selector)",
        className: "text-sm font-bold",
      ),
      P("Kitawi provides a way to find a component using a selector. The selector can be a class name, id or tag name."),
      code("""
int counter = 0;

Button(
  id: "counter",
  children: [Span(text: "Counter: \$counter")],
  onClick: (e) {
    counter++;
    find("#counter").update();
  }
)
"""),
      Hr(
        className: "my-4",
      ),
      Div(
        className: "w-full flex justify-between",
        children: [
          Div(
            onClick: (p0) => router.push("/components"),
            className: "flex flex-row hover:text-teal-500",
            children: [
              Span(
                text: "chevron_left",
                className: "material-symbols-outlined cursor-pointer",
              ),
              Span(
                text: "Components",
                className: "cursor-pointer",
              ),
            ],
          ),
          Div(
            onClick: (p0) => router.push("/async"),
            className: "flex flex-row cursor-pointer hover:text-teal-500 ",
            children: [
              Span(
                text: "Async Rendering",
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
