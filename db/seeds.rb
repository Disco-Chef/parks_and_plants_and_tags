Garden.destroy_all if Rails.env.development?
Tag.destroy_all if Rails.env.development?

grandmas_garden = Garden.create!(
  name: "Grandma's Garden",
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
)
Plant.create!(
    name: 'Lavender',
    image_url: 'https://images.immediate.co.uk/production/volatile/sites/10/2018/02/f185aed9-856e-426e-b69a-5427cf843cbe-8547772.jpg',
    garden: grandmas_garden
)
Plant.create!(
    name: 'Rose',
    image_url: 'https://www.springintheair.com/wp-content/uploads/bfi_thumb/red-roses-50-set-compressor-n5oucgj8yzgm0fcs1j2el4wxysgxatrjyhwsk99vtk.jpg',
    garden: grandmas_garden
)
Plant.create!(
  name: 'Tulip',
  image_url: 'https://www.gardenia.net/storage/app/public/plant_family/detail/1rnfLKRix3A9iJg6PUWyapKJEcLtRplixLTz1DOy.jpeg',
  garden: grandmas_garden
)

paris_garden = Garden.create!(
  name: 'Jardins des Tuileries',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg'
)
Plant.create!(
    name: 'Orange Tree',
    image_url: 'https://i.etsystatic.com/16742586/r/il/0c5d45/1393039630/il_570xN.1393039630_5twc.jpg',
    garden: paris_garden
)
Plant.create!(
  name: 'Carnation',
  image_url: 'https://m.media-amazon.com/images/I/511IBS0CS2L.jpg',
  garden: paris_garden
)
Plant.create!(
  name: 'Magnolia',
  image_url: 'https://i-dja.unimedias.fr/sites/art-de-vivre/files/styles/large/public/Import/Lukassek%20-%20stock.adobe.com-dja_magnolia_soulangeana.jpg?auto=compress%2Cformat&crop=faces%2Cedges&cs=srgb&fit=crop&h=600&w=900',
  garden: paris_garden
)

tags = %w[Tree Flower Bush Weed Grass Succulent Summer Winter Spring Autumn]
tags.each do |tag|
  Tag.create!(name: tag)
end
