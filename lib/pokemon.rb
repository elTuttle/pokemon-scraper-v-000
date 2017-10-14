require 'pry'

class Pokemon

  def initialize(:id = 0,name: "name",type: "type",db: "db")
    @name = name
    @type = type
    @db = db
  end

  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name,type) VALUES (#{name},#{type});")
  end

end
