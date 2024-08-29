import 'package:flutter/material.dart';

Widget buttonsDemo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: ListView(
      children: <Widget>[
        const ElevatedButton(
          onPressed: onPressed,
          child: Text('Elevated'),
        ),
        SizedBox(
          height: 20,
        ),
        FilledButton(
            onPressed: onPressed,
            style: getAppButtonsStyle(),
            child: const Text(
              'Filled',
            )),
        SizedBox(
          height: 20,
        ),
        const FilledButton.tonal(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Settings"),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.settings)
              ],
            )),
        SizedBox(
          height: 20,
        ),
        const OutlinedButton(onPressed: onPressed, child: Text('Outlined')),
        SizedBox(
          height: 20,
        ),
        const TextButton(onPressed: onPressed, child: Text('Text Button')),
        SizedBox(
          height: 20,
        ),
        const FloatingActionButton.extended(
          onPressed: onPressed,
          icon: Icon(Icons.add),
          label: Text("My Fab"),
        ),
        SizedBox(
          height: 20,
        ),
        const IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'on Long press on volume',
          onPressed: onPressed,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Hello, How can I help you?",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "What is your T-Shirt Size?",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Text("Please select one option"),
        SizedBox(
          height: 20,
        ),
        segmentedButtonDemo(),

        const SizedBox(height: 45),
      ],
    ),
  );
}



enum TShirtSize { small, medium, large, xlarge }

Widget segmentedButtonDemo() {
  Set<TShirtSize> selectedOptions = {TShirtSize.small};

  return SegmentedButton<TShirtSize>(
    segments: const [
      ButtonSegment<TShirtSize>(
          value: TShirtSize.small,
          label: Text('S'),
          icon: Icon(Icons.settings_accessibility)),
      ButtonSegment<TShirtSize>(value: TShirtSize.medium, label: Text('M')),
      ButtonSegment<TShirtSize>(value: TShirtSize.large, label: Text('L')),
      ButtonSegment<TShirtSize>(value: TShirtSize.xlarge, label: Text('XL')),
    ],
    multiSelectionEnabled: true,
    selected: selectedOptions,
    onSelectionChanged: (Set<TShirtSize> newSelection) {
      print(newSelection);
      print("old selection = ${newSelection.first.name}");
      print("new selection = ${newSelection.last.name}");
    },
  );
}

ButtonStyle getAppButtonsStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.red,
    foregroundColor: Colors.yellow, // This sets the text color
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );
}

void onPressed() {
  print("on Button Pressed");
}
