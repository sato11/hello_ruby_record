require 'aws-record'

class DemoTable
  include Aws::Record
  set_table_name ENV['DDB_TABLE']
  string_attr :id, hash_key: true
  string_attr :body
end

def put_item(event:,context:)
  body = event['body']
  item = DemoTable.new(id: SecureRandom.uuid, body: body)
  item.save!
  item.to_h
end
