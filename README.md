# GGLaTeXBookTemplate
LaTeX template for books, manuals, documentations, etc.

## Compiling
This LaTeX document is tested on [ShareLaTeX](https://www.sharelatex.com/).

The used compiler is **XeLaTeX**.

The main document is **main.tex**.

## One-/Two-sided

The document style can be changed from one-sided to two-sided using the **documentclass** property in [main.tex](https://github.com/GGerry/GGLaTeXBookTemplate/blob/master/main.tex) line 6

## Language Support

The language can be set in [config/config.tex](https://github.com/GGerry/GGLaTeXBookTemplate/blob/master/config/config.tex) line 4

### Sections

#### Contents
* To add a new language you have to create
    * a new directory in [contents](https://github.com/GGerry/GGLaTeXBookTemplate/tree/master/contents). The name of the directory must be the language code e.g. **FR** for French.
    * a new file with name **contents.tex** in the previously created directory.
* Syntax: contents/&lt;language code&gt;/contents.tex

#### Copyright
* To add a new language you have to create
    * a new file in [base/copyright](https://github.com/GGerry/GGLaTeXBookTemplate/tree/master/base/copyright). The name of the file must be the language code e.g. **FR** for French + the file extension **.tex**
* Syntax: base/copyright/&lt;language code&gt;.tex

#### Dictionary
* To add a new language you have to create
    * a new file in [dictionary](https://github.com/GGerry/GGLaTeXBookTemplate/tree/master/dictionary). The name of the file must be the language code e.g. **FR** for French + the file extension **.tex**
* Syntax: dictionary/&lt;language code&gt;.tex

#### Disclaimer
* To add a new language you have to create
    * a new file in [base/disclaimer](https://github.com/GGerry/GGLaTeXBookTemplate/tree/master/base/disclaimer). The name of the file must be the language code e.g. **FR** for French + the file extension **.tex**
* Syntax: base/disclaimer/&lt;language code&gt;.tex

#### Appendix
* To add a new language you have to create
    * a new file in [base/appendix](https://github.com/GGerry/GGLaTeXBookTemplate/tree/master/base/appendix). The name of the file must be the language code e.g. **FR** for French + the file extension **.tex**
* Syntax: base/appendix/&lt;language code&gt;.tex

## 3rd Party

### Fonts

* NotoSansCJKjp
    * Source: [Google Noto Fonts](https://www.google.com/get/noto/#sans-jpan)
    * License: [SIL Open Font License, Version 1.1](https://github.com/GGerry/GGLaTeXBookTemplate/blob/master/fonts/NotoSansCJKjp/LICENSE_OFL.txt)
* Roboto
    * Source: [Google Fonts](https://fonts.google.com/specimen/Roboto?selection.family=Roboto)
    * License: [Apache License 2.0](https://github.com/GGerry/GGLaTeXBookTemplate/blob/master/fonts/Roboto/LICENSE.txt)

### Images

* images/content/nate-grant-346782.jpg
    * Source: [Unsplash](https://unsplash.com/photos/QQ9LainS6tI)
    * License: [do whatever you want](https://unsplash.com/license)
* images/content/ben-kolde-367194.jpg
    * Source: [Unsplash](https://unsplash.com/photos/lqZPleZ4ERA)
    * License: [do whatever you want](https://unsplash.com/license)

## Release Notes

* 1.0.0
    * First Release

* 1.+
    * New
        * Added multi language support for appendix
        * Replaced document title in page header with uppercase chapter name

    * Improvement
        * Reduced vertical space between appendix headline and table of appendix.
        * Renamed appendix example entries

    * Bugfix
