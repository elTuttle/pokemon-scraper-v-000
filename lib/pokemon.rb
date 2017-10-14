require 'pry'

class Pokemon
  attr_accessor :id,:name,:type,:db

  def initialize(id: 1 ,name: "name",type: "type",db: "db")
    #binding.pry
  end

  def self.save(name,type,db)
    ins = db.prepare("INSERT INTO pokemon (name,type) VALUES (?,?);")
    String.each { |s| ins.execute(s) }
  end

end
