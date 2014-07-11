class FileRecord < ActiveRecord::Base
  has_many: steps
  
  after_save :save_step
  
  def save_step
    steps.create(office:office)
  end
  
end
