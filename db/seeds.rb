require "open-uri";
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

records = [
    [
        "Cat 1",
        "He is a cute cat",
        "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2018/08/kitten-440379.jpg?h=c8d00152&itok=1fdekAh2"
    ],
    [
        "Cat 2",
        "He is a cute dog",
        "https://i.guim.co.uk/img/media/7a633730f5f90db3c12f6efc954a2d5b475c3d4a/0_138_5544_3327/master/5544.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=27c09d27ccbd139fd0f7d1cef8f7d41d"
    ],
    [
        "Cat 3",
        "He is a cute cat",
        "https://icatcare.org/app/uploads/2018/06/Layer-1704-1920x840.jpg"
    ],
    [
        "Cat 4",
        "He is a cute cat",
        "https://images.theconversation.com/files/336248/original/file-20200520-152302-97x8pw.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop"
    ],
    [
        "Cat 5",
        "He is a cute cat",
        "https://api.time.com/wp-content/uploads/2015/02/cats.jpg?quality=85&w=1024&h=512&crop=1"
    ],
    [
        "Cat 6",
        "He is a cute cat",
        "https://undark.org/wp-content/uploads/2020/02/GettyImages-1199242002-1-scaled.jpg"
    ],
    [
        "Cat 8",
        "He is a cute cat",
        "https://cosmosmagazine.com/wp-content/uploads/2020/02/190404-cat-full.jpg"
    ],
    [
        "Cat 9",
        "He is a cute cat",
        "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/reference_guide/cats_and_excessive_meowing_ref_guide/1800x1200_cats_and_excessive_meowing_ref_guide.jpg"
    ],
    [
        "Cat 10",
        "He is a cute cat",
        "https://static.nationalgeographic.co.uk/files/styles/image_3200/public/01-cat-names-nationalgeographic_1525054.jpg?w=1600&h=900"
    ],
    [
        "Cat 11",
        "He is a cute cat",
        "https://www.vets4pets.com/siteassets/species/cat/cat-in-garden.jpg?w=585&scale=down"
    ]
]

records.each do |name, description, image_uri|
  open(image_uri) do |image|
    Product.create( name: name, description: description, image: image.read)
  end
end

