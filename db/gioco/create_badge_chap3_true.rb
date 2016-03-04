kind = Kind.find_or_create_by(name: 'true')
badge = Badge.create({ 
                      :name => 'chap3', 
                      :points => '30',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'