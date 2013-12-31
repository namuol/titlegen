# titlegen

Generate plausible titles from a list of example titles by employing a stupid-simple [Markov-Chain](http://en.wikipedia.org/wiki/Markov_chain) approach.

```javascript
titlegen.feed([
  'You Only Live Twice',
  'From Russia with Love',
  'The Man with the Golden Gun',
  'Live and Let Die',
  'Die Another Day'
]);

console.log(titlegen()); // -> "From Russia with the Golden Gun"
console.log(titlegen()); // -> "You Only Live and Let Die Another Day"
console.log(titlegen()); // -> "The Man with Love"
```

This was originally made for generating video game titles (which is why `/titles` includes many lists of game titles from multiple platforms), but as the example above shows, it can also be used to generate other types of titles.

### Installing

#### node.js
```bash
npm install titlegen
```

#### bower
```
bower install titlegen

<script src="/bower_components/titlegen/titlegen.js" type="text/javascript"></script>
```

#### component
```
component install namuol/titlegen

<script src="/components/namuol-titlegen/titlegen.js" type="text/javascript"></script>
```

### API

<a name='api_feed'></a>
##### [`titlegen.feed(['Some Title', 'Some Other Title', ...])`](#api_feed)

> Reset the internal Markov-chain and feed it a list of example titles (array of strings).

<a name='api_titlegen'></a>
##### [`titlegen()`](#api_titlegen)

> Generate a new random title and return it as a string.

<a name='api_config_min_word_count'></a>
##### [`titlegen.config.min_word_count`](#api_config_min_word_count)

> `Integer`; default is `2`.
> 
> The minimum number of words a generated title can have.

<a name='api_config_max_word_count'></a>
##### [`titlegen.config.max_word_count`](#api_config_max_word_count)

> `Integer`; default is `16`.
> 
> The maximum number of words a generated title can have.

<a name='api_config_max_attempts'></a>
##### [`titlegen.config.max_attempts`](#api_config_max_attempts)

> `Integer`; default is `20`.
> 
> The maximum number of attempts titlegen will make to generate a title; titles that are too
> short, too long, or are duplicates of titles from the sample data are discarded.

<a name='api_config_splitter'></a>
##### [`titlegen.config.splitter`](#api_config_splitter)

> `RegExp|String`; default is `/(\s|'s|[:!?]\s)/`
> 
> The argument passed to `title.split()` to divide a title up into "words".

<a name='api_config_transform'></a>
##### [`titlegen.config.transform`](#api_config_transform)

> Function; default removes spaces in front of all instances of `:`, `!`, `?`, and `'s`.
> 
> A function that alters the title after its words have been joined with spaces.

### Building

```bash
npm install -g grunt-cli
npm install
grunt # titlegen.coffee -> titlegen.js
```

### Included Data

A bunch of video game title lists are included in `./titles/games`.
These were acquired from [Wikipedia](http://en.wikipedia.org/wiki/Lists_of_video_games).

If you'd like to add other title list examples (i.e. movies by genre, etc) add a pull request!

### Licenses

Code: [MIT](http://opensource.org/licenses/MIT)

Included Title Data: [WP:CC-BY-SA](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
