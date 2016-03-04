kind = Kind.find_or_create_by(name: 'teacher')
badge = Badge.create({ 
                      :name => 'medium', 
                      :points => '100',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'