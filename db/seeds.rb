# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sales_people = [
  [ 'Bruce Wayne', 100000, 'seed_image' ],
  [ 'Ichigo Kurasaki', 5000, 'seed_image' ],
  [ 'Spike Spiegal', 1300, 'seed_image' ],
  [ 'Commader Shepard', 9000, 'seed_image']
]

leads = [
  [ 'William Shatner', 'internet', 'Art party tote bag neutra williamsburg, fixie ethical man bun keffiyeh fanny pack. Pitchfork shabby chic celiac, keytar migas forage listicle typewriter.', true, 1 ],
  [ 'Leonard Nimoy', 'internet', 'Health goth schlitz austin tattooed vice etsy, fap tote bag dreamcatcher godard trust fund paleo. Pitchfork gluten-free vice etsy.', false, 2 ],
  [ 'DeForest Kelley', 'internet', 'post-ironic photo booth fashion axe chia green juice. Chicharrones hammock +1 pinterest, cred tilde blog helvetica biodiesel umami schlitz narwhal kale chips literally', true, 3 ],
  [ 'James Doohan', 'internet', 'tote bag dreamcatcher godard trust fund paleo. Pitchfork gluten-free vice etsy. Bespoke migas before they sold out gluten-free helvetica. Helvetica cronut bushwick, post-ironic', true, 4 ]
]

accounts = [
  [ 'William Shatner', 200000, 'Art party tote bag neutra williamsburg, fixie ethical man bun keffiyeh fanny pack. Pitchfork shabby chic celiac, keytar migas forage listicle typewriter.', 1, 'seed_image' ],
  [ 'Leonard Nimoy', 200000, 'Health goth schlitz austin tattooed vice etsy, fap tote bag dreamcatcher godard trust fund paleo. Pitchfork gluten-free vice etsy.', 2, 'seed_image' ],
  [ 'DeForest Kelley', 200000, 'post-ironic photo booth fashion axe chia green juice. Chicharrones hammock +1 pinterest, cred tilde blog helvetica biodiesel umami schlitz narwhal kale chips literally', 3, 'seed_image' ],
  [ 'James Doohan', 200000, 'tote bag dreamcatcher godard trust fund paleo. Pitchfork gluten-free vice etsy. Bespoke migas before they sold out gluten-free helvetica. Helvetica cronut bushwick, post-ironic', 4, 'seed_image' ]
]

def seed_image(file_name)
  File.open(Rails.root + "app/assets/images/seed/#{file_name}.jpg")
end

sales_people.each do |name, target, image|
  Salesperson.create( name: name, target: target, image: seed_image(image) )
end

leads.each do |contact, source, description, active, salesperson_id|
  Lead.create( contact: contact, source: source, date: Date.today, description: description, active: active, salesperson_id: salesperson_id )
end

accounts.each do |contact, value, description, salesperson_id, image|
  Account.create( contact: contact, value: value, date: Date.today, description: description, salesperson_id: salesperson_id, logo: seed_image(image) )
end
