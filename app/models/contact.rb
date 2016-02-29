class Contact < ActiveRecord::Base
  include DataTables
  default_scope { order('name ASC') }
end
