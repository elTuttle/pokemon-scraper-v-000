require 'pry'

class Pokemon
  attr_accessor :id,:name,:type,:db

  def initialize(id: 1 ,name: "name",type: "type",db: "db")
    #binding.pry
  end

  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name,type) VALUES (#{name},#{type});")
  end

end
