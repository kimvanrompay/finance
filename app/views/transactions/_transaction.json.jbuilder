json.extract! transaction, :id, :name, :description, :amount, :category, :reference, :duedate, :status, :booknumber, :invoice, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
