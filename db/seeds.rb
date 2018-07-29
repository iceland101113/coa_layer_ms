Category.destroy_all

category_list = [
  { name: "00_基本圖資" },
  { name: "01_地籍圖資" },
  { name: "02_數值地形模型(DTM)" },
  { name: "03_休閒農業區" },
  { name: "04_林務相關" },
  { name: "05_農地盤查相關" },
  { name: "06_國土利用調查相關" },
  { name: "07_都市計畫相關" },
  { name: "08_農田水利會相關" },
  { name: "09_農村再生社區" },
  { name: "10_漁業署圖資" },
  { name: "11_農糧署相關" },
  { name: "12_農試所相關" },
  { name: "13_水土保持局相關" },
  { name: "14_畜牧場相關" },
  { name: "15_國家公園" },
  { name: "16_學校相關" },
  { name: "17_浪漫臺三線" },
  { name: "18_地籍化成果" }
]

category_list.each do |category|
  Category.create( name: category[:name] )
end
puts "Category created!"