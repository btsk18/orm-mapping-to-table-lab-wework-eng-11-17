class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    create_table_query = "CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      Name TEXT,
      Grade INTEGER
    );"
    DB[:conn].execute(create_table_query)
  end

  def self.drop_table
  end
end
