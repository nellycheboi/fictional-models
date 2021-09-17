## Models
A reference table for the region, for now it just has name of the region. Both `Attendees` and `Rules` belong to regions
```sql
region = Region.create(name: 'UK')
```

### Region
A region might more than one rule so we are putting it in it separate so we can easy reference it. For now we will just leave it as a one-to-one relation.

`Rules belongs_to to a Region`
```sql
rule = Rule.create(region: region, rule: '[Company] is 100% compliant with the General Data Protection Regulation (GDPR)')
```

### Attendee

An attendee also `belongs_to` a region so that we can pull up the rule information for them
```sql
attendee = Attendee.create(first_name: 'Maeve', last_name: 'Millay', region: region)
```
