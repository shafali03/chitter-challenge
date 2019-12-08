require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'chitter_manager_test')
  connection.exec("TRUNCATE peeps;")
ensure 
  connection.close if connection
end