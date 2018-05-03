# crystal-parser
Crystal lang console parser, links or images.

Parser uses shards: [`Fast HTML5 Parser`](https://github.com/kostya/myhtml) and [`CSS selectors for HTML5 Parser myhtml`](https://github.com/kostya/modest)


## Installing Crystal lang

[`Follow these instructions`](https://crystal-lang.org/docs/installation/index.html)


## Install parser

  * Clone repositore: `git clone https://github.com/webmastak/crystal-parser.git`
  * Go over run catalogue: `cd crystal-parser`
  * Install dependencies: `crystal deps`
  * Build release parser: `crystal build --release --no-debug src/parser.cr`
  
  
## Use parser at console

  * Parse links, protocol http: `./parser http://example.com`
  * Parse links, protocol https: `./parser https://example.com`
  * Parse images, protocol http: `./parser i http://example.com`
  * Parse images, protocol https: `./parser i https://example.com` 
  

## Learn more Crystal lang

  * Official website Crystal lang: https://crystal-lang.org
  * Official documentation: https://crystal-lang.org/docs
  * Official API: https://crystal-lang.org/api
  * Shards: http://crystalshards.xyz
  * Amber framework: https://amberframework.org
  * Kemal framework: http://kemalcr.com
