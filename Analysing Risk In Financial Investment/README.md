ev-battery-project
==================

This repo holds a webapp, scripts, data, and dictionaries for making 
investment recommendations in the electric vehicle battery supply chain.

Run the web server:
```
$ cd app
$ python run.py
```

Before running the web server, you must have the npm dependencies installed and the javascript bundled:
```
$ cd app
$ npm install
$ npm run build
```


### Repo structure (see README in each repo for more info):
 * `dicts/` holds the dictionaries for each category.
 * `corpus/` holds a corpus of documents related to the EV battery supply chain
 * `stocks/` holds stock history data for all companies relevant to EV batteries.
 * `app/` holds the flask server that the rosy-cheeked biz and executive cronies will use to make their Intelligent Investment Decisions®


### Categories (todo: elaborate)
 * Raw materials
 * Supplies
 * Production
 * Distribution
 * Profits
 * Legal

Team: Abinav, Aditya, Alyssa, Bhavesh, Harshal, Mitch

# TODO:
 * [ ] Get stock data (Bhavesh)
 * [ ] Write stock script (Bhavesh)
 * [X] Github repo setup (Mitch)
 * [ ] HTML/CSS UI mockup (Harshal)
 * [X] Start flask server (Mitch, Harshal)
 * [X] Basic UI structure (Mitch)
 * [ ] Connect backend data to UI, display it live (Mitch)
 * [ ] Collect data documents into `corpus/` (Alyssa)
 * [ ] Start report (Alyssa)
 * [ ] Build classifier which takes in a document, outputs a category (Adi, Abinav)
 * [X] Ask friends who took the class before what their project looked like (Adi)
 * [X] Ask Dr. Kowolenko if our sentiment analysis metric is rigorous enough (Adi)
