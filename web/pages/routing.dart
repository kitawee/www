import 'package:kitawi/kitawi.dart';
import "../components/code.dart";

Component routing() {
  return Div(
    className: "w-full flex flex-col gap-4",
    children: [
      Span(
        text: "Routing",
        className: "text-2xl font-bold",
      ),
      P("Kitawi provides a simple way to handle routing in your application."),
      Span(
        text: "1. PageView",
        className: "text-sm font-bold",
      ),
      P("The page view component is used to render different pages based on the current route."),
      P("The page view component takes a list of pages as children and renders the page that matches the current route."),
      code("""
PageView(
  pages: [
    Page(
      path: "/",
      builder: (params) => Div(
        children: [Span(text: "Home Page")],
      ),
    ),
    Page(
      path: "/about",
      builder: (params) => Div(
        children: [Span(text: "About Page")],
      ),
    ),
  ]
)
"""),
      P("In the example above, the PageView component renders the Home Page when the route is / and the About Page when the route is /about."),
      Span(
        text: "2. Router",
        className: "text-sm font-bold",
      ),
      P("The router is used to handle navigation in your application."),
      code("""

router.push("/about");
"""),
      P("The router.push() method is used to navigate to a new route. If the route matches a page in the PageView component, the page will be rendered else a 404 page will be rendered."),
      Hr(
        className: "my-4",
      ),
      Div(
        className: "w-full flex justify-start",
        children: [
          Div(
            className: "flex flex-row",
            children: [
              Span(
                text: "chevron_left",
                className: "material-symbols-outlined cursor-pointer",
              ),
              Span(
                text: "Async Rendering",
                className: "cursor-pointer",
              ),
            ],
          ),
        ],
      )
    ],
  );
}
