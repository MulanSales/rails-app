for i in 0..9
  Blog.create!(
    title: "My Blog Post #{i}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vel nunc justo. Vestibulum blandit et sem quis auctor. Sed elementum, sapien sit amet posuere cursus, orci tortor feugiat enim, et hendrerit lacus lectus nec purus. Nunc sed nunc eget velit interdum pellentesque id vel erat. Nunc dictum libero mollis semper eleifend. Praesent hendrerit metus id justo ultrices, pharetra pharetra enim malesuada. Aenean fermentum vulputate tempus."
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

for i in 0..8
  Portfolio.create!(
    title: "Portfolio title #{i}",
    subtitle: "My greate service",
    body: "Proin dapibus nec erat sit amet consectetur.",
    main_image: "https://www.placehold.it/600x400",
    thumb_image: "https://www.placehold.it/350x200" 
    )
end

puts "9 portfolios created"