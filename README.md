# crystal_coin

TODO: Write a description here

## Installation

TODO: Write installation instructions here

## Usage

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/crystal_coin/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## ShardCoin

- Each `block` is stored with a timestamp and index.
- Each `block` has its self identifying hash

  - Hash of the block's (`index` `timestamp` and `data`) and previous hash

- Take the previous block as a parameter create data for new block, and return the new block with appropriate data.

`#<ShardCoin::Block:0x104092f00 @current_hash="96c0c2705160176d23d9cb98f47d96d7478a439166580411b4a86eb920fc17e1", @data="Genesis Block", @index=0, @timestamp=2018-08-19 03:45:25.987269000 -04:00 Local, @previous_hash="0">`

