Example / How to use:
=====================
```Ruby
User.all.map_by(:id, :first_name, :last_name, :created_at, 'instance_method.foo.bar')
```

--------------------------------------------------------------------------------------------

Description:
==============

MapBy is a more concise shorthand for things like array.map{ |obj| obj.method }  
It was heavily influenced by Dr. Nic's "Map By Method", http://drnicutilities.rubyforge.org/


Rationale:
==========

I wrote this in an attempt to dry up my uses of Ruby's `map` method: 
```Ruby
User.all.map{ |user| [user.id, user.first_name, user.last_name, user.created_at, user.instance_method.foo.bar] }
```

Ruby takes a stab at this problem and provides an ampersand shorthand, but it's not very powerful: 
```Ruby
User.all.map(&:first_name) #lame, because you're restricted to one attribute
```
