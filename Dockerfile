FROM elixir

WORKDIR /app

RUN yes | mix archive.install \
    https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez \
    && mix local.hex --force \
    && mix local.rebar --force

COPY mix.exs /app/mix.exs

RUN yes | mix deps.get


# RUN ls -lsa && env && cat mix.exs
# mix ecto.create
# mix phoenix.server

