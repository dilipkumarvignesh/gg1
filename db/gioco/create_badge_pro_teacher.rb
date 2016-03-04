kind = Kind.find_or_create_by(name: 'teacher')
badge = Badge.create({ 
                      :name => 'pro', 
                      :points => '500',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'