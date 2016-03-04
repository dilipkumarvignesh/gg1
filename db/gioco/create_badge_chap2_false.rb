kind = Kind.find_or_create_by(name: 'false')
badge = Badge.create({ 
                      :name => 'chap2', 
                      :points => '10',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'