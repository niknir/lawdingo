class Lawyer < ActiveRecord::Base  
  has_attached_file :photo, :styles => { :medium => "200x200>", :thumb => "100x100>" }
  
end
