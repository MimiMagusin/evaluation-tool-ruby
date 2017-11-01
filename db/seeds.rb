
student1 = Student.create!( { first_name: "Iguanodon",last_name: "Piotrovsky", current_evaluation: "red", image_url: "https://goo.gl/wB6q9q" } )
student2 = Student.create!( { first_name: "Mosasaurus",last_name: "Piotrovsky", current_evaluation: "yellow",  image_url: "https://goo.gl/aoZsYt" } )
student3 = Student.create!( { first_name: "Hungarosaurus",last_name: "Piotrovsky", current_evaluation: "green",  image_url: "https://goo.gl/EqRlgP" } )
student4 = Student.create!( { first_name: "Irrrrrrrrrr",last_name: "Piotrovsky", current_evaluation: "red", image_url: "https://goo.gl/wB6q9q" } )
student5 = Student.create!( { first_name: "Mossy",last_name: "Piotrovsky", current_evaluation: "yellow",  image_url: "https://goo.gl/aoZsYt" } )
student6 = Student.create!( { first_name: "Hungars",last_name: "Piotrovsky", current_evaluation: "green",  image_url: "https://goo.gl/EqRlgP" } )


batch1 = Batch.create!( { name: "7A", start_date: (Date.today-6), end_date: (Date.today) })
batch2 = Batch.create!( { name: "7B", start_date: (Date.today-6), end_date: (Date.today) })
