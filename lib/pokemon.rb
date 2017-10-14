require 'pry'

class Pokemon

  def initialize(id: 1,name: "name",type: "type",db: "db")
    @name = name
    @type = type
    @db = db
    @id = self.save(name,type,db)
  end

  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name,type) VALUES (#{name},#{type});")
  end

end
