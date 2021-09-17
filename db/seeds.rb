# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

region = Region.create(name: 'UK')
rule = Rule.create(region: region, rule: '[Company] is 100% compliant with the General Data Protection Regulation (GDPR)')

attendee = Attendee.create(first_name: 'Maeve', last_name: 'Millay', region: rule)
