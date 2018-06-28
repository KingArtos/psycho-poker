class PsychoPoker
  Dir["/lib/**/*.rb"].each {|file| load file }

  def intialize(argument)
    @cards = argument.split(' ').map { |possible_card| Card.new(possible_card) }
  end
end