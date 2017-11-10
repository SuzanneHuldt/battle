class Player
  DEFAULT_HP = 100
  attr_accessor :name, :hitpoints
  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HP
  end

  def be_hit
    @hitpoints -= 10
  end
end
