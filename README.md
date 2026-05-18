# Introduction to content analysis: Retrieval, annotation, and analysis of digital data.

By Sofia Gil-Clavel [webpage](https://sofiag1l.github.io/) (researcher
and manager of the Societal Analytics Lab
[link](https://societal-analytics.nl/)).

-   [Introduction](#introduction)
-   [Itinerary](#itinerary)
-   [Requirements](#requirements)

## Introduction

In this repository, you will find all the necessary to follow the CAnD3
workshop “Introduction to content analysis”.

The workshop aims to give participants a brief, but holistic overview of
the basics of automatic content analysis. For this, we will retrieve,
annotate, and analyse data from the Guardian.

It is absolutely necessary that you have checked and followed the
[requirements](#requirements) section before the workshop. The final
codes we will follow will be available 24hrs before the workshop.

**When:** May 27th, 2026, between 16:30 and 19:30 hrs.

**Where:** Check email sent by CAnD3 colleagues.

## Itinerary

During the session you will learn the following:

-   \[16:30 - 16:45 hrs\] Introduction to content analysis.
-   \[16:45 – 17:15 hrs\] Data retrieval using “httr2”.
-   \[17:15 - 17:45 hrs\] How to annotate data to create a Gold Standard.
-   \[17:45 - 18:00 hrs\] Break.
-   \[18:00 - 18:30 hrs\] Using “tidyllm” to create agents to annotate
    data.
-   \[18:30 - 19:00 hrs\] Cleaning the data using the packages “stringr”
    and “tidytext”.
-   \[19:00 - 19:30 hrs\] Visualizing the results using “ggplot2” and
    “ggwordcloud”.

## Requirements

Participants need to:

1.  Bring their own laptop.
2.  Have R and Rstudio installed.
3.  Have experience using the tidyverse packages.
4.  Have installed the following R packages:

-   tidyverse
-   httr2
-   irr
-   tidyllm
-   caret
-   tidytext
-   SnowballC
-   hunspell

1.  Have a Guardian developer token. The token can be requested via this
    webpage: <https://open-platform.theguardian.com/access/>.
2.  Have installed Ollama. You can download it from here:
    <https://ollama.com/download>. Once installed please run the
    following code in R to install the models:

<!-- -->

    library(tidyllm)

    ollama_download_model("llama3.2:1b")
    ollama_download_model("deepseek-r1:1.5b")
