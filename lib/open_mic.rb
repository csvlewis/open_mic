class OpenMic
  attr_reader :location,
              :date,
              :performers
  def initialize(location:, date:)
    @location = location
    @date = date
    @performers = []
    @all_jokes = []
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    @performers.each do |user|
      @all_jokes << user.jokes
      @all_jokes = @all_jokes.flatten
    end
    unique_jokes = @all_jokes.uniq
    if unique_jokes.length == @all_jokes.length
      false
    else
      true
    end
  end
end
