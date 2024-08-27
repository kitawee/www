import 'package:kitawi/kitawi.dart';
import 'pages/introduction.dart';
import 'components/sidebar.dart';
import 'pages/installation.dart';
import 'pages/components.dart';
import 'pages/state_management.dart';
import 'pages/async_rendering.dart';
import 'pages/routing.dart';
import 'pages/template.dart';

void main() {
  String theme = "bg-secondary text-primary-800";

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
                      "w-full px-4 lg:px-32 xl:px-52 py-4 flex flex-row justify-between items-center",
                  children: [
                    Div(
                      className:
                          "w-1/3 flex flex-row items-center cursor-pointer hover:underline",
                      onClick: (p) => router.push("/"),
                      children: [
                        Image(
                          src: "/assets/logo-192.webp",
                          alt: "Kitawi",
                          className: "w-8 h-8",
                        ),
                        Span(
                          id: 'title',
                          text: "kitawi.",
                          className:
                              "font-serif text-xl slide-in 1s ease-in-out hidden md:block",
                        ),
                      ],
                    ),
                    Input(
                      placeholder: "Search ...",
                      className:
                          "w-1/3 px-4 py-2 border border-slate-300 rounded hidden",
                    ),
                    Div(
                      className:
                          "w-1/3 flex flex-row gap-4 items-center justify-end",
                      children: [
                        Image(
                          src:
                              "https://cdn-icons-png.flaticon.com/512/1051/1051377.png",
                          alt: "Github",
                          className: "w-8 h-8 cursor-pointer",
                        )..addEventListener(
                            "click",
                            (e) {
                              window.open("https://github.com/bryanbill/kitawi",
                                  "_blank");
                            },
                          ),
                        Div(
                          onClick: (p0) {
                            theme = theme.contains("bg-primary")
                                ? "bg-bg-primary text-white"
                                : "bg-primary text-bg-primary";
                            context.update();
                          },
                          className:
                              "hidden cursor-pointer  w-8 h-8 hover:bg-slate-300 rounded-full flex items-center justify-center",
                          children: [
                            Span(
                              text: theme.contains("bg-primary")
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
                  className: "w-full flex flex-row px-2 lg:px-32 xl:px-52 py-4",
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
                          builder: (params) => KitawiComponents(),
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
                          builder: (params) => KitawiRouting(),
                        ),
                        Page(
                          path: "/template",
                          builder: (params) => TemplateDoc(),
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
