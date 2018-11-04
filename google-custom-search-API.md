## Google-cloud-vision API

1. Set up and try using it
[Custom Search JSON API](https://developers.google.com/custom-search/v1/overview)
  - If you have not already created a Custom Search Engine, create one.
    - you might need to input some domain url to use, fake url will be ok
  - get an API key
  - in your [custom search engine](https://cse.google.com/cse/all), edit basics of the environment, including
    - "Search the entire web" : turn on! otherwise you cannot see any results
    - "Image search" : turn on!
    - "Safety search" : turn on!
  - you can try without any coding in [Google API explorer](https://developers.google.com/apis-explorer/#p/customsearch/v1/), type
    - q: query
    - cx: your custom search engine id, you can see it in your [cse page](https://cse.google.com/cse/all)
    - num: number of result to show
    - search type: select image(dropdown list)
    - then click "execute"

2. Imprement in js code

