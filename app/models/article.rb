class Article < ApplicationRecord
    # Active Record is smart enough to automatically map column names to model attributes, 
    # which means you don't have to declare attributes inside Rails models, as that will 
    # be done automatically by Active Record.

    validates :title, presence: true, length: { minimum: 5 }

end
