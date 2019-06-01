# LaTeXBookTemplate
LaTeX template for books, manuals, documentations, theses, etc.

[See example on Overleaf](https://www.overleaf.com/read/ywqfywbxgkvq)

---

## Table of Contents

* [Release Notes](#release-notes)
* [Build and Setup](#build-and-setup)
	* [Overleaf](#overleaf)
    * [Windows](#windows)
		* [Installation of MiKTeX](#installation-of-miktex)
		* [Installation of Atom](#installation-of-atom)
    * [Linux](#linux)
        * [Installation of TeX Live](#installation-of-tex-live)
        * [Installation of Atom](#installation-of-atom-1)
    * [Shell Script](#shell-script)
	* [Write Japanese](#write-japanese)
	* [Debian PDF Viewer](#debian-pdf-viewer)
* [Configuration](#configuration)
	* [One-/Two-sided](#one-two-sided)
	* [Enable / Disable Sections](#enable--disable-sections)
	* [Font Family](#font-family)
	* [Href Frame](#href-frame)
	* [Table of Contents Layout](#table-of-contents-layout)
	* [Counter of figures, tables and lstlisting](#counter-of-figures-tables-and-lstlisting)
* [Language Support](#language-support)
	* [Appendix](#appendix)
	* [Contents](#contents)
	* [Copyright](#copyright)
	* [Dictionary](#dictionary)
	* [Disclaimer](#disclaimer)
	* [Glossary](#glossary)
* [Content](#content)
	* [Thesis](#thesis)
	* [Images](#images)
	* [Colors](#colors)
	* [Code Snippets / Listings](#code-snippets--listings)
* [3rd Party](#3rd-party)
	* [Fonts](#fonts)
	* [Images](#images-1)

---

## Release Notes
You will find the release notes in the [CHANGELOG.md](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/CHANGELOG.md)

---

## Build and Setup

This LaTeX document is tested with the following tools
1. **[Overleaf](https://www.overleaf.com/)**
2. **[Atom](https://atom.io/)** editor in combination with **[Tex Live](http://www.tug.org/texlive/)**. Tested with:
   - Debian 9
   - Debian 10
   - Ubuntu 18.04.1
3. **[Atom](https://atom.io/)** editor in combination with **[MiKTeX](https://miktex.org/)**. Tested with:
    - Windows 7
4. **Shell** script in combination with **[Tex Live](http://www.tug.org/texlive/)**. Tested with:
   - Debian 9
   - Debian 10
   - Ubuntu 18.04.1

### Overleaf

* The used compiler is **XeLaTeX**.
* The main document is **main.tex**.

### Windows

To build with the [Atom](https://atom.io/) editor on Windows you have to execute the below steps.

#### Installation of MiKTeX

1. Download the installation file from https://miktex.org/
2. Install MiKTeX
3. Download [ActivePerl.exe](https://www.activestate.com/activeperl/downloads)
4. Install ActivePerl
5. Navigate to **C:\Program Files\MiKTeX 2.9\miktex\bin\x64** and run **perltex.exe**

#### Installation of Atom

1. Download the installation file from https://atom.io/
2. Install Atom
3. Run Atom and install the packages
    * `atom-latex`
        * v0.8.2: There is a known issue on UNIX systems https://github.com/James-Yu/Atom-LaTeX/issues/110. (Fixed in version v0.8.3)<br>
        Therefore you have to edit the file `/home/<user>/.atom/packages/atom-latex/lib/builder.coffee` in line 66 from `@buildErrs += data` to `@buildErrs[@buildErrs.length - 1] += data`
    * `language-latex`
4. Open the `atom-latex` package settings and change
    * `LaTeX compiler to use` to `xelatex`
    * `BibTex compiler to use` to `biber`
    * Add to the default values of `Files to clean` the file extensions `*.run.xml, *.gz, *.atfi, *.bcf, *.maf, *mtc*, *.ilg, *.lol, *.glsdefs`
    * make sure that `Clean LaTeX auxiliary files after building process` is enabled.

### Linux

To build with the [Atom](https://atom.io/) editor on Linux you have to execute the below steps.

#### Installation of TeX Live

Install TeX Live with the required packages. Therefore execute the below command
```
apt-get install texlive texlive-xetex texlive-lang-german texlive-bibtex-extra biber latexmk latex-cjk-common
```
#### Installation of Atom

1. Download the .deb package from https://atom.io/
2. Install Atom with the command
```
dpkg -i /path/to/deb/file/atom-amd64.deb
```
3. Run Atom and install the packages
    * `atom-latex`
        * v0.8.2: There is a known issue on UNIX systems https://github.com/James-Yu/Atom-LaTeX/issues/110. (Fixed in version v0.8.3)<br>
        Therefore you have to edit the file `/home/<user>/.atom/packages/atom-latex/lib/builder.coffee` in line 66 from `@buildErrs += data` to `@buildErrs[@buildErrs.length - 1] += data`
    * `language-latex`
4. Open the `atom-latex` package settings and change
    * `LaTeX compiler to use` to `xelatex`
    * `BibTex compiler to use` to `biber`
    * Add to the default values of `Files to clean` the file extensions `*.run.xml, *.gz, *.atfi, *.bcf, *.maf, *mtc*, *.ilg, *.lol, *.glsdefs`
    * make sure that `Clean LaTeX auxiliary files after building process` is enabled.

### Shell Script
Just execute the **build.sh** script.
```
sh build.sh
```

### Write Japanese
Installation of Japanese (Mozc) (IBus) on Debian.

First, set up locales:

```
sudo dpkg-reconfigure locales
```

In addition to the English locale (en_US.UTF-8) or German locale (de_DE.UTF-8), include Japanese locales (**ja_JP.EUC-JP** and **ja_JP.UTF-8**). However, set the default locale for the system to **en_US.UTF-8** or **de_DE.UTF-8**.

Install im-config:
```
sudo apt-get install im-config
```

Install and configure IBus-related packages:
```
sudo apt-get install ibus ibus-clutter ibus-mozc
```
```
sudo apt-get install ibus-gtk3
```

Run
```
im-config
```
Select **No** to the question from im-config.

Run the IBus setup program:

```
ibus-setup
```

If asked, start ibus-daemon.

Under the Input Method tab, add -> Japanese -> Mozc.

Under IBus Preferences, configure things to your liking. For example, I prefer making Ctrl + Space (as opposed to Shift + Space) trigger the switch between input modes. The IBus icon also shows up in the system tray, from which various settings can be changed. The default key short cut might be Super(Windows) Key + Space.

Further tipps: http://www.textfugu.com/season-4/social-learning/9-3/

### Debian PDF Viewer

On debian it might be necessary to install additonal fonts to see japanese characters.

```
apt install fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core
```

---

## Configuration

The most settings can be defined in [config/config.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/config/config.tex).

### One-/Two-sided

The document style can be changed from one-sided to two-sided using the **documentclass** property in [main.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/main.tex) line 6

### Enable / Disable Sections
You can decide to include or exclude the below sections. By default all sections are included. If you wish to exclude a section you have to replace `true` with `false` in [config/config.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/config/config.tex) for the desired section. (see line 9-19 + 22-23)
* Title Page
* Disclaimer text (If disclaimer and copyright is exluded the entire page is removed)
* Copyright text  (If copyright and disclaimer is exluded the entire page is removed)
* Abstract
* Table of Contents
* List of Figures
* List of Tables
* Listings
* Abbreviations
* Glossary (The entries can be set in [base/glossary/EN.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/tree/master/base/glossary/gglossary.tex))
* Appendix
* Table of Appendix (If appendix is excluded the table of appendix will be excluded, too.)
* References Page
* Index

### Font Family
The preferred font family can be set in
[config/config.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/config/config.tex). (see line 7)

### Href Frame

The frame around links can be enabled or disabled in [config/config.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/config/config.tex) line 25

### Table of Contents Layout
* You can define the indent of the sections in [config/layout.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/config/layout.tex). (see line 203)

### Counter of figures, tables and lstlisting

You can decide if the counter of figures, tables lstlisting will be affected by the chapter number. By default the counter is affected by the chapter number. If you wish to change this behavior you have to replace `false` with `true` in [config/config.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/config/config.tex). (see line 28)

---

## Language Support

The language can be set in [config/config.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/config/config.tex) line 4

### Appendix
* To add a new language you have to create
    * a new file in [base/appendix](https://github.com/GGolbik/GGLaTeXBookTemplate/tree/master/base/appendix). The name of the file must be the language code e.g. **FR** for French + the file extension **.tex**
* Syntax: base/appendix/&lt;language code&gt;.tex

### Contents
* To add a new language you have to create
    * a new directory in [contents](https://github.com/GGolbik/GGLaTeXBookTemplate/tree/master/contents). The name of the directory must be the language code e.g. **FR** for French.
    * a new file with name **contents.tex** in the previously created directory.
* Syntax: contents/&lt;language code&gt;/contents.tex

### Copyright
* To add a new language you have to create
    * a new file in [base/copyright](https://github.com/GGolbik/GGLaTeXBookTemplate/tree/master/base/copyright). The name of the file must be the language code e.g. **FR** for French + the file extension **.tex**
* Syntax: base/copyright/&lt;language code&gt;.tex

### Dictionary
* To add a new language you have to create
    * a new file in [dictionary](https://github.com/GGolbik/GGLaTeXBookTemplate/tree/master/dictionary). The name of the file must be the language code e.g. **FR** for French + the file extension **.tex**
* Syntax: dictionary/&lt;language code&gt;.tex

### Disclaimer
* To add a new language you have to create
    * a new file in [base/disclaimer](https://github.com/GGolbik/GGLaTeXBookTemplate/tree/master/base/disclaimer). The name of the file must be the language code e.g. **FR** for French + the file extension **.tex**
* Syntax: base/disclaimer/&lt;language code&gt;.tex

### Glossary
* To add a new language you have to create
    * a new file in [base/glossary](https://github.com/GGolbik/GGLaTeXBookTemplate/tree/master/base/glossary). The name of the file must be the language code e.g. **FR** for French + the file extension **.tex**
* Syntax: base/glossary/&lt;language code&gt;.tex

---

## Content

### Thesis

There is a example config and title page for a thesis.

Replace in [main.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/main.tex)
* `\input{config/config}` with `\input{config/thesisconfig}` (see line 10-11)
* `\input{base/titlepage/titlepage}` with `\input{base/titlepage/thesistitlepage}` (see line 37-38)

### Images

If you want to add an image I advise to do the below steps.
* copy the image to the `images` folder in the project root directory.
* Create a definition for the image path in `config/images.tex` e.g. `\def\IMGExampleImage{images/path/to/file/name.png}`
* To use the image in the document write `\includegraphics{\IMGExampleImage}`

### Colors

If you wish to use a none standard color you should at the definiton in [config/colors.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/config/colors.tex)

### Code Snippets / Listings

The styles for the listings are defined in [config/lstdefinestyle.tex](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/config/lstdefinestyle.tex). If you want to add a code snippet i advise to do the below steps.
* copy the file with the code to the `snippets` folder in the project root directory.
* Create a definition for the code path in `config/snippets.tex` e.g. `\def\SNIPPETExample{snippets/path/to/file/name.html}`
* To use the snippet in the document write `\lstinputlisting[language=bash, style=customStyleHTMLDark, caption=Snippet title]{\SNIPPETExample}`

---

## 3rd Party

### Fonts
* Noto Serif
    * Source: https://www.google.com/get/noto/#serif-lgc
    * License: [SIL Open Font License, Version 1.1]( https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/fonts/NotoSerif/LICENSE_OFL.txt)
* Noto Serif CJKjp
    * Source: https://www.google.com/get/noto/#serif-jpan
    * License: [SIL Open Font License, Version 1.1]( https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/fonts/NotoSerifCJKjp/LICENSE_OFL.txt)
* Noto Sans
    * Source: https://www.google.com/get/noto/#sans-lgc
    * License: [SIL Open Font License, Version 1.1]( https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/fonts/NotoSans/LICENSE_OFL.txt)
* Noto Sans CJKjp
    * Source: [Google Noto Fonts](https://www.google.com/get/noto/#sans-jpan)
    * License: [SIL Open Font License, Version 1.1](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/fonts/NotoSansCJKjp/LICENSE_OFL.txt)
* Roboto
    * Source: [Google Fonts](https://fonts.google.com/specimen/Roboto?selection.family=Roboto)
    * License: [Apache License 2.0](https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/fonts/Roboto/LICENSE.txt)
* Computer Modern Unicode Serif
    * Source https://www.fontsquirrel.com/fonts/computer-modern
    * License: [SIL Open Font License, Version 1.1]( https://github.com/GGolbik/GGLaTeXBookTemplate/blob/master/fonts/CMUSerif/LICENSE_OFL.txt)

### Images

* images/content/nate-grant-346782.jpg
    * Source: [Unsplash](https://unsplash.com/photos/QQ9LainS6tI)
    * License: [do whatever you want](https://unsplash.com/license)
* images/content/ben-kolde-367194.jpg
    * Source: [Unsplash](https://unsplash.com/photos/lqZPleZ4ERA)
    * License: [do whatever you want](https://unsplash.com/license)
