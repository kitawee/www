import 'package:kitawi/kitawi.dart';
import 'package:kitawi/utils.dart';
import "../components/code.dart";
import "../components/paginator.dart";

class KitawiRouting extends Template {
  KitawiRouting()
      : super(
          className: "w-full",
        );

  @override
  void onRender() {
    final query = Query.get('page');
    if (query != null) {
      final element = document.getElementById(query);
      if (element != null) {
        element.scrollIntoView();
      }
    }
  }

  @override
  Component build(context) {
    return Div(
      className: "w-full flex flex-col gap-4",
      children: [
        Span(
          text: "Routing",
          className: "text-2xl font-bold",
        ),
        P("Kitawi provides a simple way to handle routing in your application."),
        Span(
          id: "pageview",
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
          id: "router",
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
        Paginator(
          previous: (name: "Async Rendering", path: "/async"),
        ),
      ],
    );
  }
}
