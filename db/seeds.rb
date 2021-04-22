# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#


User.create(email:"TestEmail@email.com", name:"Name", last_name:"LastName")
Project.create(title:"ProjectTitle", position: 1, uid: 1)
Tag.create(title:"TagTitle", uid: 1, task_id: 1)
Task.create(title:"TaskTitle", description:"TaskDescription", is_done:false, project_id: 1, uid: 1, attachment: nil )


