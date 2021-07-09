build:
	mix deps.get
	mix ecto.setup
	npm install --prefix assets

run:
	mix phx.server
