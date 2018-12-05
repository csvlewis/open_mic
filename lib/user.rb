class User
  attr_reader :name,
              :jokes
  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(listener, joke)
    listener.learn(joke)
  end

  def joke_by_id(id)
    joke_with_id = []
    @jokes.each do |joke|
    if joke.id == id
      joke_with_id << joke
    end
    end
    joke_with_id[0]
  end


end
