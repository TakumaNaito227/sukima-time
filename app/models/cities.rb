class Cities < ActiveHash::Base
  self.data = [
      {id: 1, name: '全ての都市'}, {id: 2, name: '東京'}, {id: 3, name: '日本橋'},
      {id: 4, name: '銀座'}, {id: 5, name: '新宿'}, {id: 6, name: '池袋'},
      {id: 7, name: '渋谷'}, {id: 8, name: '横浜'}
  ]
end