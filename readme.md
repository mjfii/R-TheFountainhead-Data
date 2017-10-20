# The Fountainhead Expressed in R
---

## Motivation
I continually needed a text corpus to tinker, fiddle, and learn natural language processing (NLP) techniques, libraries, and methodologies. Being that is this a favorite of mine and that is broken down in to logical parts (and further into chapters), it was the obvious choice to serve as the backdrop for mining and visualizing various text analytics. Plus, it is just an awesome book.

## Prerequisites
There are no prerequisites to use this R library.  However, the wiki examples use a variety of different libraries and they are clearly noted there.

## Installation
Using the `devtools` function, install with the below:

```r
library(devtools)
install_github('mjfii/The-Fountainhead')
library('fountainhead')
```

## Examples
The book is broken down into four parts (Peter Keating, Ellsworth M. Toohey, Gail Wynand, and Howard Roark), and each part is represented as character vector in an R data file, i.e. `*.rda`:  
```r
?peter_keating
?ellsworth_m_toohey
?gail_wynand
?howard_roark
```
Each element is a chapter in the book part, and can be accessed as you would any vector:
```r
x <- howard_roark[15]
```

Numerous NLP, text mining, and visualization examples can be found in the repository wiki found [here](https://github.com/mjfii/The-Fountainhead/wiki).

## Repository Contributors
Michael Flanigan  
email: [mick.flanigan@gmail.com](mick.flanigan@gmail.com)  
twitter: [@mjfii](https://twitter.com/mjfii)  

# Versioning
0.0.0.9000 - Initial deployment (2017-01-26)