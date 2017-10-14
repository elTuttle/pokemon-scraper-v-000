require 'pry'

class Pokemon
  attr_accessor :id,:name,:type,:db

  def initialize(id: 1 ,name: "name",type: "type",db: "db")
    #binding.pry
  end

  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name,type) VALUES (?,?);",[name,type])
  end

  def self.save(id,db)
    db.execute("SELECT * FROM pokemon WHERE id = ?",[id])

  end

end
