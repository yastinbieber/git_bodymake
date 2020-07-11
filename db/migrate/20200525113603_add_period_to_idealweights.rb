class AddPeriodToIdealweights < ActiveRecord::Migration[5.2]
  def change
    add_column :idealweights, :period, :integer
    add_column :idealweights, :basemetabolism, :integer
    add_column :idealweights, :kcalburned, :integer
    add_column :idealweights, :minusweight, :float
    add_column :idealweights, :minuskcal, :integer
    add_column :idealweights, :kcalintake, :integer
    add_column :idealweights, :intakeproteingram, :integer
    add_column :idealweights, :intakefatgram, :integer
    add_column :idealweights, :intakecarbogram, :integer
    add_column :idealweights, :intakeproteinkcal, :integer
    add_column :idealweights, :intakefatkcal, :integer
    add_column :idealweights, :intakecarbokcal, :integer
  end
end
