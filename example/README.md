# Convert string to Icon

## Example do icon

```Flutter
Row(
  children: <Widget>[
    Icon(
      getIconData('favorite'),
      color: Colors.pink,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      getIconData('audiotrack'),
      color: Colors.green,
      size: 30.0,
    ),
    Icon(
      getIconData('beach_access'),
      color: Colors.blue,
      size: 36.0,
    ),
  ],
)