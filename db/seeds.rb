3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 topics created"


for i in 0..9
  Blog.create!(
    title: "My Blog Post #{i}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vel nunc justo. Vestibulum blandit et sem quis auctor. Sed elementum, sapien sit amet posuere cursus, orci tortor feugiat enim, et hendrerit lacus lectus nec purus. Nunc sed nunc eget velit interdum pellentesque id vel erat. Nunc dictum libero mollis semper eleifend. Praesent hendrerit metus id justo ultrices, pharetra pharetra enim malesuada. Aenean fermentum vulputate tempus.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

for i in 0..4
  Skill.create!(
    title: "Rails #{i}",
    percent_utilized: i * 20
  )
end

puts "5 skills created"

for i in 1..8
  Portfolio.create!(
    title: "Portfolio title #{i}",
    subtitle: "Ruby on Rails",
    body: "Proin dapibus nec erat sit amet consectetur.",
    main_image: "https://www.placehold.it/600x400",
    thumb_image: "https://www.placehold.it/350x200" 
    )
end

Portfolio.create!(
    title: "Portfolio title #{i}",
    subtitle: "Angular",
    body: "Proin dapibus nec erat sit amet consectetur.",
    main_image: "https://www.placehold.it/600x400",
    thumb_image: "https://www.placehold.it/350x200" 
)

puts "9 portfolios created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies items created"