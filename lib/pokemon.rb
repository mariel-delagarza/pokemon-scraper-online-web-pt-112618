class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, id, db)
    db.execute("INSERT INTO pokemon (name, type, id) VALUES (?,?,?)", name, type, id)
  end

end
