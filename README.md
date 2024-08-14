# r53d README

Syntax highlighting for [RELAP5-3D](https://relap53d.inl.gov/SitePages/Home.aspx) in [Visual Studio Code](https://code.visualstudio.com/).

## What's in the folder

* This folder contains all of the files necessary for your extension.
* `package.json` - this is the manifest file in which you declare your language support and define the location of the grammar file that has been copied into your extension.
* `syntaxes/r53d.tmLanguage.json` - this is the Text mate grammar file that is used for tokenization.
* `language-configuration.json` - this is the language configuration, defining the tokens that are used for comments and brackets.

## Install your extension

* To start using your extension with Visual Studio Code copy it into the `<user home>/.vscode/extensions` folder and restart Code.
* To share your extension with the world, read on https://code.visualstudio.com/docs about publishing an extension.

## Make changes

* You can modify the extension directly in the `<user home>/.vscode/extensions/r53d` folder.
* After saving the changes you have to reboot vscode to apply them.

## Change default color scheme
The suggested color scheme is `Dark (Visual Studio -C/C++) Visual Studio Dark C++`, to change color scheme you can visit the following page https://code.visualstudio.com/docs/getstarted/themes.
To change the default color scheme append the following settings to the user `settings.json` file:

```json

  "editor.tokenColorCustomizations": {
      "textMateRules": [
          {
              "name": "Strings",
              "scope": "input.r53d",
              "settings": {
                "foreground": "#ffffff"
              }
          },
          {
            "name": "Title and End of the input file",
            "scope": "support.type.property-name.r53d",
            "settings": {
              "foreground": "#9CDCFE"
            }
          },
          {
            "name": "Comments",
            "scope": ["comment.line.r53d","comment.block.r53d"],
            "settings": {
              "foreground": "#57A64A"
            }
          },
          {
            "name": "Heat Structures cards",
            "scope": ["constant.other.character-class.regexp.r53d"],
            "settings": {
              "foreground": "#D16969"
            }
          },
          {
              "name": "Neutronic cards",
              "scope": ["keyword.other.operator.r53d"],
              "settings": {
                "foreground": "#D8A0DF"
              }
          },
          {
              "name": "Rest of the cards",
              "scope": ["string.quoted.single.r53d"],
              "settings": {
                "foreground": "#CE9178"
              }
          },
          {
            "name": "Keywords",
            "scope": ["keyword.control.r53d"],
            "settings": {
              "foreground": "#D8A0DF"
            }
          },
          {
            "name": "Floating point numbers",
            "scope": ["constant.numeric.r53d"],
            "settings": {
              "foreground": "#B5CEA8"
            }
          },
          {
            "name": "Integers",
            "scope": ["constant.language.r53d"],
            "settings": {
              "foreground": "#569CD6"
            }
          },
          {
            "name": "Operators including + sign",
            "scope": "keyword.operator.r53d",
            "settings": {
              "foreground": "#B4B4B4"
            }
          }
      ]
  }

```
More information on how to set your configuration file can be found at this page https://code.visualstudio.com/docs/getstarted/settings.

## Add more language features

* To add features such as IntelliSense, hovers and validators check out the VS Code extenders documentation at https://code.visualstudio.com/docs

## Features
`Coming soon.`
<!-- Describe specific features of your extension including screenshots of your extension in action. Image paths are relative to this README file.

For example if there is an image subfolder under your extension project workspace:

\!\[feature X\]\(images/feature-x.png\)

> Tip: Many popular extensions utilize animations. This is an excellent way to show off your extension! We recommend short, focused animations that are easy to follow. -->

## Known Issues

If the exension end up in the file `.vscode/extensions/.obsolete` delete both the .osolete file and the `.vscode/extensions/extensions.json` file and restart vscode

## Release Notes

### 1.0.0

Initial release of `r53d` extension.

---

