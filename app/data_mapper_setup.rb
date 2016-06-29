require "data_mapper"
require "dm-validations"
require "dm-postgres-adapter"

local_postgres = "postgres://localhost/makersbnb_#{ ENV["RACK_ENV"] }"
DataMapper.setup(:default, ENV["DATABASE_URL"] || local_postgres)
DataMapper.finalize
DataMapper.auto_upgrade!
