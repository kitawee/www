import 'dart:async';

import 'package:kitawi/kitawi.dart';
import "../components/code.dart";

Component asyncRendering() {
  StreamController<int> controller = StreamController<int>();
  return Div(
    className: "w-full flex flex-col gap-4",
    children: [
      Span(
        text: "Async Rendering",
        className: "text-2xl font-bold",
      ),
      P("Kitawi provides a way to render components asynchronously using the Reactive and Promise components."),
      Span(
        text: "1. Reactive",
        className: "text-sm font-bold",
      ),
      P("Reactive is a component that is used with Streams to update the UI when the stream emits a new value."),
      code("""

StreamController<int> controller = StreamController<int>();

Reactive(
  stream: controller.stream,
  builder: (data) => Button(
    children: [Span(text: "Counter: \$data")],
    onClick: (e) {
      controller.add(data + 1);
    }
  )
)
"""),
      P("This is a simple example of a counter that increments when a button is clicked. The counter is updated using the controller.add() method."),
      P("Here is the rendered output:"),
      Reactive(
        stream: controller.stream,
        initial: 0,
        builder: (data) => Button(
          className: "bg-teal-500 text-white px-4 py-2 rounded w-full",
          children: [
            Span(
              text: "Counter: $data",
            ),
          ],
          onClick: (e) {
            controller.add(data + 1);
          },
        ),
      ),
      Span(
        text: "2. Promise",
        className: "text-sm font-bold",
      ),
      P("Promise is a component that is used to fetch data from the server and update the UI when the data is available."),
      code("""
import 'dart:async';

Future<int> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 10;
}

Promise(
  future: fetchData(),
  onResolve: (data) => Span(text: "Data: \$data"),
  onReject: (error) => Span(text: "Error: \$error")
)
"""),
      P("This is a simple example of fetching data from the server and updating the UI when the data is available."),
      Hr(
        className: "my-4",
      ),
      Div(
        className: "w-full flex justify-between",
        children: [
          Div(
            onClick: (p0) => router.push("/state"),
            className: "flex flex-row hover:text-teal-500",
            children: [
              Span(
                text: "chevron_left",
                className: "material-symbols-outlined cursor-pointer",
              ),
              Span(
                text: "State Management",
                className: "cursor-pointer",
              ),
            ],
          ),
          Div(
            onClick: (p0) => router.push("/routing"),
            className: "flex flex-row cursor-pointer hover:text-teal-500 ",
            children: [
              Span(
                text: "Routing",
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
