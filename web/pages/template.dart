import 'package:kitawi/kitawi.dart';
import '../components/code.dart';
import '../components/paginator.dart';

class TemplateDoc extends Template {
  @override
  Component build(context) {
    return Div(
      className: "w-full flex flex-col gap-4",
      children: [
        Span(
          text: "Template",
          className: "text-2xl font-bold",
        ),
        P("To create a new widget with lifecycle methods, you can extend the Template class."),
        P("The Template class provides the following lifecycle methods:"),
        Span(
          text: "1. onRender",
          className: "text-sm font-bold",
        ),
        P("The onRender method is called when the component is rendered in to the DOM and added to component tree."),
        Span(
          text: "2. onDispose",
          className: "text-sm font-bold",
        ),
        P("The onDispose method is called when the component is removed from the DOM and removed from the component tree."),
        code("""
class MyComponent extends Template {
  @override
  Component build(context) {
    return Div(
      children: [
        Span(text: "Hello World"),
        Div(
          children: [
            Span(text: "Click to dispose"),
          ],
        )..addEventListener("click", (e) {
          context.remove();
        }),
      ],
    );
  }

  @override
  void onRender() {
    print("MyComponent rendered");
  }

  @override
  void onDispose() {
    print("MyComponent disposed");
  }
}
"""),
        P("In the example above, the MyComponent class extends the Template class and overrides the onRender and onDispose methods."),
        P("The onRender method prints 'MyComponent rendered' to the console when the component is rendered."),
        P("The onDispose method prints 'MyComponent disposed' to the console when the component is removed."),
        Hr(
          className: "my-4",
        ),
        Paginator(
          previous: (name: "Components", path: "/components"),
          next: (name: "State Management", path: "/state"),
        ),
      ],
    );
  }
}
