Wine.destroy_all

100.times do
  wine = Wine.create(
    name: Faker::App.name,
    varietal: ['Shiraz', 'Shirah', 'Chardonnay', 'Pinot Noir', 'Cabernet Sauvignon',
        'White Zinfindel', 'Sauvignon Blanc', 'Riesling', 'Moscato', 'Merlot', 'Zinfindel',
        'Malbec', 'White Blend', 'Red Blend'].sample,
    year: Faker::Base.rand_in_range(1900,2016),
    vinyard: Faker::Company.name
  )
end
