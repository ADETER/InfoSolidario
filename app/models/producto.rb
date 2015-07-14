class Producto < ActiveRecord::Base

  searchable do
    integer :points
    text :description
    text :title

  end
end
