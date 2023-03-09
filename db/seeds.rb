# This import SQL was make thought this link
# https://gist.github.com/seyhunak/7843549
# Thank you @seyhunak

unless Rails.env.production?
  connection = ActiveRecord::Base.connection
  connection.tables.each do |table|
    connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"
  end

  sql = File.read('db/import.sql')
  statements = sql.split(/;$/)
  statements.pop

  ActiveRecord::Base.transaction do
    statements.each do |statement|
      connection.execute(statement)
      puts 'SQL has been imported with successfull!'
    end
  end
end

