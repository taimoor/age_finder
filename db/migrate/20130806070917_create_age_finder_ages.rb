class CreateAgeFinderAges < ActiveRecord::Migration
  def change
    create_table :age_finder_ages do |t|

      t.timestamps
    end
  end
end
