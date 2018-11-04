## Project LW187

title: Menu Visualizer(TBD)
team: A.I, K.H, R.C, Y.F


## Target / Pain / Solution / Originality

1. Where idea came from
  - Trip for Cambodia / Seeing le wagon people ordering food
      - We first see pics and enter into restaurant
      - Sometimes get out again to see pics again
  - Translation is not the best way because
      - direct translation does not make sense
      - user still cannot imagine what it looks like

2. Segmentation / Targeting
  [Segmentation of consumer]
  - criteria 1 : nationality
  - criteria 2 : geometric [local people or visitors]
  - criteria 3 : satisfaction factor
                type 1 - like fancy restaurant
                type 2 - hate unknown or change
                type 3 - like feeling local

  [Targeting of consumer]
  - criteria 1 : no limit
  - criteria 2 : visitor
  - criteria 3 : type 1

3. Wants and Pain of consumer
  (TBU) same as presentation


4. Solution
  Target    : above
  Pain      : above
  Solution  : To create app which convert menu into menu with pictures

  [User journey]
  1. Go to restaurant
  2. [Download app, sign in]
  3. Take a picture of the menu, NOT a specific meal
  4. (app runs methods)
  5. Receive menu with pictures
  6. ***Order food***
  7. [Upload pictures, Wish list, Close app, Sign up]

  _Library
  1. touch menu card
  2. take a pic of food they orderd actually
  3. upload it
  4. save it in database
  5. see some feed back

  _Wish list
  1. look at returned list of meals, swipe

  <!-- To Be Discussed -->
  - write a review feature?
  - share featue (instagram, facebook, twitter)


## Models & Methods
  Visualize
  Scan/Compose
  - receive a picture
  - send it to [Google API (OCR)](https://cloud.google.com/translate/docs/)
  - receive JSON file
  - retrieve string array
  Search image
  - for each element(word), give it to [Google API (Search)](https://developers.google.com/custom-search/v1/overview)
  - receive JSON file
  - (TBC)retrieve image path
  Create view
  - create cards of menu
  - show it to user

  Sign in
  - input data
  - validate
  - accept

  Wish list
  - Visualize
  - swipe card to wish list (like as email delete in iPhone)


  <!-- To Be Discussed -->
  - use facebook/twitter/google log-in?
  - if payment impremented, we also need to have credit card


## Business issues

X. 2-word expression, value proposition
  - visualize a menu
  - eat like a local

X. Concept / Branding


X. CVCA


X. Differentiation Strategy
  Cost-leadership

X. Marketing Strategy
  (TBU)

X. Monetization / Market volume
  (TBU)
  - maybe we cannot monetize due to legal matter
  - after getting certain amount of active users, ads model

X. Issues / Expected questions
  - Can you use pictures without rights to use? Is it legitmate?
    ->We don't discuss this is legal matter, but it may be useful to see [Copyright Act of Japan](http://www.japaneselawtranslation.go.jp/law/detail_main?vm=&id=1980)


## API usage(moving to another file..)

  _Google Cloud Vision API

  1. Create google cloud vision api account
  2. Set up([google - Quickstart: Using Client Libraries](https://cloud.google.com/vision/docs/quickstart-client-libraries))
  3. Run ruby code in your .rb file([google - Text detection samples](https://cloud.google.com/vision/docs/detecting-text#vision-text-detection-ruby))










