class Debtee < ActiveRecord::Base
  validates :debtee, :presence => true
  validates :website, :presence => true
  validates :username, :presence => true
  validates :password, :presence => true
end
