class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.text :job_text
      t.date :post_date
      t.integer :user_id
      t.integer :importance
      t.timestamps
    end
  end
end
