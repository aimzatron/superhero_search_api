Superhero Search API
====================

Find out information about your favorite superhero!


Run locally:
---------------

- git clone superhero_search_api
- run `bundle install`
- ensure Postgres is setup on your machine. For instructions based on your OS go to the [PG Download Page](https://www.postgresql.org/download/)
- run `bundle exec rails db:setup`
- acquire an API key for the SuperHero api via: [SuperHero API](https://superheroapi.com/index.html)
- create a .env file
- add SuperHero API key as `SUPERHERO_TOKEN` to `.env`

Run specs:
-------------
- run `rspec spec`

Access via Heroku:
------------------
[Superhero Search API on Heroku](https://afritz-superhero-api.herokuapp.com/)
FYI, the root page is the `searches#index` page.

Search for info on a superhero:
----------------------------------
- Navigate to "/superheroes/search" and pass a `name` param to the url (e.g. - "/superheroes/search?name=batman")
- If no hero exists with that name or nothing is entered, expect to have a 404 be returned.
- If a hero exists with that name, expect to receive a JSON response with more info on your hero.

View all searches:
---------------------
- Navigate to "/searches" and view a json list of searches
- To view pagination, add the `page` param to the url (e.g. - "/searches?page=1")
- To view sorting, add the `sort` and `direction` params to the url (e.g. - "/searches?sort=criteria&direction=desc")

More info about the tools and libraries used in this app:
-----------------------------------------------
- [SuperHero API](https://superheroapi.com/index.html)
- [Postgres - DB](https://www.postgresql.org/)
- [Rspec - Testing Suite](https://rspec.info/documentation/)
- [Faraday - HTTP Client](https://github.com/lostisland/faraday)
- [VCR - Testing HTTP Requests](https://github.com/vcr/vcr)
- [dotenv rails - storing env vars](https://github.com/bkeepers/dotenv)
- [Yard - Documentation Generation](https://github.com/lsegal/yard)
- [willpaginate - Pagination Gem](https://github.com/mislav/will_paginate)
- [Active Model Serializers - Serialization Gem](https://github.com/rails-api/active_model_serializers)
