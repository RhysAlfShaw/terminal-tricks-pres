#import "@preview/typslides:1.2.6": *
#import "@preview/muchpdf:0.1.0": muchpdf

// Project configuration
#show: typslides.with(
  ratio: "16-9",
  theme: "dusky",
  font: "Fira Sans",
  link-style: "color",
)

#front-slide(
  title: "Terminal Tips and Tricks",
  subtitle: [
   "It can do that?"
    ],
  authors: "Rhys Shaw",
  info: [
    #link("https://github.com/RhysAlfShaw/terminal-tricks-pres")
  ]
)

#title-slide("Wins!")
#title-slide("Issues")
#title-slide("News?")
#front-slide(
  title: "Terminal Tips and Tricks",
  subtitle: [
   "It can do that?"
    ],
  authors: "Rhys Shaw",
  info: [
    #link("https://github.com/RhysAlfShaw/terminal-tricks-pres")
  ]
)

#slide(title:"Printing images to the terminal")[
For iterm:
- imgcat - png, gif, pdfs.(https://kszenes.github.io/blog/2024/ImgCat/)

For kitten (linux terminal emulator):
- icat (https://sw.kovidgoyal.net/kitty/kittens/icat/)

Brew:
- mcat (https://github.com/Skardyy/mcat)

]

#slide(title:"ANSI escapes codes")[
ANSI escape codes (or "sequences") are special command strings used in command-line terminals to control text formatting, color, and cursor movement. Instead of being printed as text, the terminal interprets them as instructions.

Most sequences start with an Escape Character followed by a Control Sequence Introducer (CSI), which is typically.

- \\x1b (or \\e or \\033): The Escape character.

- [: The Control Sequence Introducer (CSI).

- ...: One or more parameters (numbers) separated by semicolons.

- m: The command (known as SGR - Select Graphic Rendition). This is the most common command, used for colors and styles.
]

#slide(title:"ANSI Examples")[
Practical Example (Bash Shell)
This command prints "Hello!" in bold red text on a yellow background, then resets the formatting.
```bash
echo -e '\x1b[1;31;43mHello!\x1b[0m'
```
```\x1b[1m: Set Bold```

```\x1b[31m: Set Foreground to Red```

```\x1b[43m: Set Background to Yellow```

```\x1b[0m: Reset all formatting to default```
]

#slide(title:"Common Styling Codes")[
#table(
  columns: 4,
  inset: 10pt,
  align: center,
  [Code], [Effect], [Code], [Effect],
  [0], [Reset/Normal], [30-37], [Set Foreground Color],
  [1], [Bold/Increased Intensity], [40-47], [Set Background Color],
  [2], [Faint/Decreased Intensity], [90-97], [Set Bright Foreground Color],
  [3], [Italic], [100-107], [Set Bright Background Color],
  [4], [Underline], [38;5;x], [Set 256-color Foreground],
  [5], [Slow Blink], [48;5;x], [Set 256-color Background],
  [7], [Reverse Video], [38;2;r;g;b], [Set RGB Foreground],
  [8], [Conceal], [48;2;r;g;b], [Set RGB Background],
  [9], [Crossed-out], [20-29], [Disable corresponding effect],
)
]
#title-slide("Your Turn to share!")
#title-slide("AOB?")
#title-slide("Pub?")