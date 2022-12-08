class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Face' },
    { id: 3, name: 'Eye' },
    { id: 4, name: 'Lip' }
  ]

  include ActiveHash::Associations
  has_many :items
end
