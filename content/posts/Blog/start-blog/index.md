---
title: "Statr a Web Log"
summary: Deploying a Blog from 0 to 1.
date: 2025-02-15
weight: 100
aliases: ["/start-blog"]
tags: ["Weblog"]
author: ["Jone"]
---

### Intro

- **We would like to deploy a weblog on our personal `hompage` or `github.io` to record notes during oue learning process.** 

- This process will involve `Hugo`, `Github pages` and `Markdown`.

- The author uses `macOS` and use `PaperMod Theme` as an example.


---

### Preparation

- A domain name (optional).	✅
- Github account.	✅
- **Patience**.	✅

---

### Let's begin

#### 1. Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```bash
brew -v
```

#### 2. Install Hugo

```bash
brew install hugo
```

#### 3. Select a theme

👉 Here are [Hugo Themes](https://themes.gohugo.io/).  And we chose the [PaperMod](https://themes.gohugo.io/themes/hugo-papermod/). A fast, clean, responsive theme. Thanks to the author  [Aditya Telange](https://github.com/adityatelange/).

#### 4. Clone github project

You need creat a github project which named `user_name.github.io`, and clone to your Desktop. Then run:

```bash
git clone https://github.com/adityatelange/hugo-PaperMod PaperMod --depth=1
```

```bash
cd themes/PaperMod
```

```bash
git pull
```

And copy the content of  `PaperMod` to your project. 

#### 5. Configure files

Configure `hugo.ymal` using the sample. You need to change `baseURL`, `title` and some other information that is your own.

```yaml
baseURL: "https://user_name.github.io/"
languageCode: en-us
title: My New Hugo Site
theme: ["PaperMod"]

enableRobotsTXT: true
buildDrafts: false
buildFuture: false
buildExpired: false

minify:
  disableXML: true
  minifyOutput: true

languages:
  en:
    languageName: "English"
    weight: 1
    taxonomies:
      category: categories
      tag: tags
      series: series
    menu:
      main:
        - name: Posts
          url: /
          weight: 1
        - name: Archive
          url: archives
          weight: 5
        - name: Search
          url: search/
          weight: 10
        - name: Tags
          url: tags/
          weight: 15

outputs:
  home:
    - HTML
    - RSS
    - JSON # necessary for search

params:
  env: production # to enable google analytics, opengraph, twitter-cards and schema.
  title: ExampleSite
  description: "ExampleSite description"
  keywords: [Blog, Portfolio, PaperMod]
  author: Me
  # author: ["Me", "You"] # multiple authors
  images: ["<link or path of image for opengraph, twitter-cards>"]
  DateFormat: "January 2, 2006"
  defaultTheme: auto # dark, light
  disableThemeToggle: false

  ShowReadingTime: true
  ShowShareButtons: true
  ShowPostNavLinks: true
  ShowBreadCrumbs: true
  ShowCodeCopyButtons: false
  ShowWordCount: true
  ShowRssButtonInSectionTermList: true
  UseHugoToc: true
  disableSpecial1stPost: false
  disableScrollToTop: false
  comments: false
  hidemeta: false
  hideSummary: false
  showtoc: false
  tocopen: false

  assets:
    favicon: "<link / abs url>"
    favicon16x16: "<link / abs url>"
    favicon32x32: "<link / abs url>"
    apple_touch_icon: "<link / abs url>"
    safari_pinned_tab: "<link / abs url>"

  label:
    text: "Jone'Log"
    icon: /apple-touch-icon.png
    iconHeight: 35

  # profile-mode
  profileMode:
    enabled: false # needs to be explicitly set
    title: ExampleSite
    subtitle: "This is subtitle"
    imageUrl: "<img location>"
    imageWidth: 120
    imageHeight: 120
    imageTitle: my image
    buttons:
      - name: Posts
        url: posts
      - name: Tags
        url: tags

  homeInfoParams:
    Title: "Welcome to Jone'Log \U0001F44B"
    Content: Hi !

  socialIcons:
    - name: x
      url: "https://x.com/"
    - name: stackoverflow
      url: "https://stackoverflow.com"
    - name: github
      url: "https://github.com/user_name/"

  analytics:
    google:
      SiteVerificationTag: "XYZabc"
    bing:
      SiteVerificationTag: "XYZabc"
    yandex:
      SiteVerificationTag: "XYZabc"

  cover:
    hidden: true # hide everywhere but not in structured data
    hiddenInList: true # hide on list pages and home
    hiddenInSingle: true # hide on single page

  editPost:
    URL: "https://github.com/user_name/user_name.github.io/content"
    Text: "Suggest Changes" # edit text
    appendFilePath: true # to append file path to Edit link

  fuseOpts:
    isCaseSensitive: false
    shouldSort: true
    location: 0
    distance: 1000
    threshold: 0.4
    minMatchCharLength: 0
    limit: 10 # refer: https://www.fusejs.io/api/methods.html#search
    keys: ["title", "permalink", "summary", "content"]
menu:
  main:
    - identifier: categories
      name: categories
      url: /categories/
      weight: 10
    - identifier: tags
      name: tags
      url: /tags/
      weight: 20
    - identifier: example
      name: example.org
      url: https://example.org
      weight: 30
pygmentsUseClasses: true
markup:
  highlight:
    noClasses: false
    # anchorLineNos: true
    # codeFences: true
    # guessSyntax: true
    # lineNos: true
    # style: monokai
```



---

### Wait

The author is still learning more detailed ways to use it, and continues to update it.
