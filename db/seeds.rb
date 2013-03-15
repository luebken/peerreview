Role.destroy_all()
role_dev = Role.create({ name: 'Developer'})
role_po = Role.create({ name: 'Product Owner'})
role_manager = Role.create({ name: 'Manager'})
role_arch = Role.create({ name: 'Architect'})

Member.destroy_all()
m1 = Member.create({ email: 'matthias.luebken@adcloud.com', role_id: role_manager.id })
m2 = Member.create({ email: 'timo.derstappen@adcloud.com', role_id: role_arch.id })
m3 = Member.create({ email: 'lukas.wehn@adcloud.com', role_id: role_po.id })
m4 = Member.create({ email: 'tim.schindler@adcloud.com', role_id: role_dev.id })
m5 = Member.create({ email: 'jan.pieper@adcloud.com', role_id: role_dev.id })
m6 = Member.create({ email: 'tj.gabbour@adcloud.com', role_id: role_dev.id })

Team.destroy_all()
t = Team.new( { name: 'A-Team'} )
t.members << [m1, m2, m3, m4 ]
t.save
