class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

def build_network(call_letters, channel)
  binding.pry
  network_hash={}
  network_hash[:call_letters] = call_letters
  network_hash[:channel] = channel
  Network.create(network_hash)
end

end
