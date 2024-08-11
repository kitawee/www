import 'package:kitawi/kitawi.dart';
import 'pages/introduction.dart';
import 'components/sidebar.dart';
import 'pages/installation.dart';
import 'pages/components.dart';
import 'pages/state_management.dart';
import 'pages/async_rendering.dart';
import 'pages/routing.dart';

void main() {
  String theme = "bg-white text-slate-800";

  final app = App(
      title: "Kitawi",
      children: [
        Builder(
          className: "w-full ",
          builder: (context) {
            return Div(
              className: "w-full $theme flex flex-col gap-4",
              children: [
                Div(
                  className:
                      "w-full px-4 lg:px-8 xl:px-52 py-4 flex flex-row justify-between items-center",
                  children: [
                    P(
                      "Kitawi",
                      className: "text-xl font-bold",
                      onClick: (p0) => router.push("/"),
                    ),
                    Div(
                      className: "flex flex-row gap-4 items-center",
                      children: [
                        Span(
                          text: "Github",
                          className:
                              "cursor-pointer hover:underline hover:text-slate-500 hover:bg-slate-300 px-2 py-1 rounded",
                        ),
                        Div(
                          onClick: (p0) {
                            theme = theme.contains("bg-white")
                                ? "bg-slate-800 text-white"
                                : "bg-white text-slate-800";
                            context.update();
                          },
                          className:
                              "cursor-pointer  w-8 h-8 hover:bg-slate-300 rounded-full flex items-center justify-center",
                          children: [
                            Span(
                              text: theme.contains("bg-white")
                                  ? "dark_mode"
                                  : "light_mode",
                              className: "material-symbols-outlined",
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Hr(),
                Div(
                  className: "w-full flex flex-row px-2 lg:px-8 xl:px-52 py-4",
                  children: [
                    sidebar(),
                    PageView(
                      className: "lg:w-3/4 xl:w-4/5  px-4 lg:px-8 xl:px-16",
                      pages: [
                        Page(
                          path: '/',
                          builder: (params) => introduction(),
                        ),
                        Page(
                          path: "/installation",
                          builder: (params) => installation(),
                        ),
                        Page(
                          path: "/components",
                          builder: (params) => components(),
                        ),
                        Page(
                          path: "/state",
                          builder: (params) => stateManagement(),
                        ),
                        Page(
                          path: "/async",
                          builder: (params) => asyncRendering(),
                        ),
                        Page(
                          path: "/routing",
                          builder: (params) => routing(),
                        )
                      ],
                    )
                  ],
                ),
              ],
            );
          },
        )
      ],
      onRender: (doc) {});

  app.run();
}
