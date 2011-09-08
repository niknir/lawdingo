class Lawyer < ActiveRecord::Base
  has_attached_file :photo,
                    :styles => { :medium => "200x200>", :thumb => "100x100>" },
                    :storage => :s3,
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :path => ":attachment/:id/:style.:extension",
                    :bucket => 'lawdingo'
end

