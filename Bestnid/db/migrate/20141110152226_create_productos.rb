class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.date :vencimiento
      t.text :imagen
      t.string :categoria_nombre

      t.timestamps
    end
  end
end
