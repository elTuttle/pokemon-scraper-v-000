require 'pry'

class Pokemon
  attr_accessor :id,:name,:type,:db

  def initialize(id: 1 ,name: "name",type: "type",db: "db")
    #binding.pry
  end

  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name,type) VALUES (?,?);",[name,type])
  end

  def self.find(id,db)
    pokemon_db = db.execute("SELECT * FROM pokemon WHERE id = #{id}")
    @id = pokemon_db[0]
    @name = pokemon_db[1]
    @type = pokemon_db[2]
    binding.pry
  end

end
