class Life7


  def initialize()
    @lives = 7
  end

  def remaining_lives
    @lives
  end

  def restart
    @lives -= 1  unless @lives <= 0
  end

end
