# ARTISTS #

require 'xmlsimple'
require_relative './seeds/helpers'

require_relative './seeds/seed_artists'
require_relative './seeds/seed_acts_and_shows'
#require 'seeds/seed_orders'
require_relative './seeds/seed_customers'

#Artist.delete_all
#Show.delete_all
#Act.delete_all

#seed_artists() 
#seed_acts_and_shows() 
seed_customers
#seed_orders()
