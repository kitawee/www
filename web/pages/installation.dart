import 'package:kitawi/kitawi.dart';
import '../components/code.dart';

Component installation() {
  return Div(
    className: "w-full flex flex-col gap-4",
    children: [
      Span(
        text: "Installation",
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
                    "Kitawi requires Dart SDK to be installed on your machine.",
              ),
              Span(
                text: "Learn more",
                onClick: (p0) => window.open(
                  "https://dart.dev/get-dart",
                  "_blank",
                ),
                className: "text-teal-500 cursor-pointer hover:underline",
              )
            ],
          )
        ],
      ),
      P("Kitawi can be installed using."),
      Span(
        text: "1. Kitawi CLI",
        className: "text-sm font-bold",
      ),
      code("dart pub global activate kitawi"),
      P("This will install the Kitawi CLI globally on your machine."),
      Span(
        text: "a. Create a new project",
        className: "text-sm font-bold px-4",
      ),
      code("kitawi new my_project", className: "mx-4"),
      P("This will create a new Kitawi project in the directory my_project."),
      Span(
        text: "b. Get dependencies",
        className: "text-sm font-bold px-4",
      ),
      code("cd my_project", className: "mx-4"),
      code("kitawi get", className: "mx-4"),
      Span(
        text: "c. Run the project",
        className: "text-sm font-bold px-4",
      ),
      code("kitawi run", className: "mx-4"),
      //build
      Span(
        text: "d. Build the project",
        className: "text-sm font-bold px-4",
      ),
      code("kitawi build", className: "mx-4"),
      P("This will get the dependencies for the project. In order to add a dependency, append the package name to the command."),
      Span(
        text: "2. Pubspec.yaml",
        className: "text-sm font-bold",
      ),
      P("Add the following to your pubspec.yaml file:"),
      code(
        """
dependencies:
  kitawi: any
""",
      ),
      P("Then run the following command:"),
      code("dart pub get"),
      Div(
        className:
            "bg-blue-50 border-blue-200 border p-4 rounded flex-row flex items-center gap-4 flex-wrap",
        children: [
          Span(
            className: "material-symbols-outlined",
            text: "info",
          ),
          Div(
            className: "flex flex-col gap-2",
            children: [
              Span(
                text:
                    "The CLI is the preferred way to create a new Kitawi project. It comes with a set of commands to help you build web applications faster and optimized for production.",
              ),
              Span(
                text:
                    "The counter above will not be updated when the button is clicked.",
              )
            ],
          ),
        ],
      ),
      Hr(
        className: "my-4",
      ),
      Div(
        className: "w-full flex justify-between",
        children: [
          Div(
            onClick: (p0) => router.push("/"),
            className: "flex flex-row hover:text-teal-500",
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
            onClick: (p0) => router.push("/components"),
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
