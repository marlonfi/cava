class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|
      t.string :codigo
      t.date :programed_at

      t.timestamps
    end
  end
end
