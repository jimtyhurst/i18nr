## Internationalizing an R application for model parameters that vary per country
5-min Lightning Talk for [CascadiaRConf 2017](https://cascadiarconf.com/)

See:

* https://github.com/jimtyhurst/i18nr/blob/master/i18n_design_patterns.Rmd

or the HTML generated from that:

* https://github.com/jimtyhurst/i18nr/blob/master/i18n_design_patterns.html

for the presentation notes.

## Abstract

As an R developer, I sometimes need to parameterize functions, so that they can be re-used across different populations. One example is where model parameters vary across countries. This talk presents a coding idiom for internationalizing a function, where the output depends on the locale in which the sampling occurred. This idiom enables code reuse and enhances testability. I demonstrate the idiom with sample code from scoring an international student assessment.
