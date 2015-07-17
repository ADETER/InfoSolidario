class Producto < ActiveRecord::Base

  searchable do
    integer :points
    text :direction
    text :title

  end
end
