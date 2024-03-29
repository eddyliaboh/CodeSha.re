class Post < ActiveRecord::Base
	SYNTAX=['Ruby','C++', 'Java', 'C', 'C#', 'CSS', 'HTML', 'Plain text']
	LISTING=['Listed', 'Unlisted']
	
  validates :name,  :presence => true

  validates :title, :presence => true,
                    :length => { :minimum => 5 }

  has_many :comments
	
end