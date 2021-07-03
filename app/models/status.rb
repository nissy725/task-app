class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '未提案' },
    { id: 3, name: '提案中' },
    { id: 4, name: '保留' },
    { id: 5, name: '敗退' },
    { id: 6, name: '成約' },
  ]

  include ActiveHash::Associations
  has_many :customers
  
end