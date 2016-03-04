kind = Kind.find_or_create_by(name: 'DEFAULT')
badge = Badge.create({ 
                      :name => 'chap1', 
                      :points => '10',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'