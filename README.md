Superhero Search API
====================

Find out information about your favorite superhero!


To run locally:
---------------

- git clone superhero_search_api
- run `bundle install`
- ensure Postgres is setup on your machine. For instructions based on your OS go to the [PG Download Page](https://www.postgresql.org/download/)
- run `rails db:setup`
- acquire an API key for the SuperHero api via: [SuperHero API](https://superheroapi.com/index.html)
- create a .env file
- add SuperHero API key as SUPERHERO_TOKEN to .env

To run specs:
-------------
- run `rspec spec`

More info about the tools and libraries used in this app:
-----------------------------------------------
- [SuperHero API](https://superheroapi.com/index.html)
- [Postgres - DB](https://www.postgresql.org/)
- [Rspec - Testing Suite](https://rspec.info/documentation/)
- [Faraday - HTTP Client](https://github.com/lostisland/faraday)
- [VCR - Testing HTTP Requests](https://github.com/vcr/vcr)
- [dotenv rails - storing env vars](https://github.com/bkeepers/dotenv)
- [Yard - Documentation Generation](https://github.com/lsegal/yard)
