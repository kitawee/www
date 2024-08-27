import 'package:kitawi/kitawi.dart';
import "../components/code.dart";
import "../components/paginator.dart";

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
      Paginator(
        previous: (name: "Template", path: "/template"),
        next: (name: "Async Rendering", path: "/async"),
      ),
    ],
  );
}
