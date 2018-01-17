# GGLaTeXBookTemplate
LaTeX template for books, manuals, documentations, etc.

## Compiling

This LaTeX document is tested with the following tools
1. **[ShareLaTeX](https://www.sharelatex.com/)**
2. with the **[Atom](https://atom.io/)** editor in combination with **[Tex Live](http://www.tug.org/texlive/)** on Debian 9

### ShareLaTeX

* The used compiler is **XeLaTeX**.
* The main document is **main.tex**.

### Atom and TeX Live

#### TeX Live installation

Install TeX Live with the required packages. Therefore execute the below command
```
apt-get install texlive texlive-xetex texlive-lang-german texlive-bibtex-extra biber latexmk
```
#### Atom installation
To build with the [Atom](https://atom.io/) editor on Debian 9 "Stretch" you have to execute the below steps.

1. Download the .deb package from https://atom.io/
2. Install atom with the command
```
dpkg -i /path/to/deb/file/atom-amd64.deb
```
3. Run Atom and install the packages
    * `atom-latex`
        * v0.8.2 There is a known issue on UNIX systems https://github.com/James-Yu/Atom-LaTeX/issues/110.
        Therefore you have to edit the file `/home/<user>/.atom/packages/atom-latex/lib/builder.coffee` in line 66 from `@buildErrs += data` to `@buildErrs[@buildErrs.length - 1] += data`
    * `language-latex`
4. Open the `atom-latex` package settings and change
    * `LaTeX compiler to use` to `xelatex`
    * `BibTex compiler to use` to `biber`
    * Add to the default values of `Files to clean` the file extensions `*.xml, *.gz, *.atfi, *.bcf, *.maf, *mtc*, *.ilg, *.lol`
    * make sure that `Clean LaTeX auxiliary files after building process` is enabled.

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
        * Added description and project file to build with Atom editor and TeX Live
    * Improvement
        * Reduced vertical space between appendix headline and table of appendix.
        * Renamed appendix example entries
    * Bugfix
        * Now line breaks will work for long URLs, too.
