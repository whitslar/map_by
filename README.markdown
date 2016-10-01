MapBy was written to be an even shorter, more versatile shorthand for things like array.map(&:method)
=================================================================================================================


It was heavily influenced by Dr. Nic's "Map By Method", http://drnicutilities.rubyforge.org/
=================================================================================================================


Why it's useful:
=================================================================================================================
1. 4 LESS SHIFT KEYSTROKES!!!
2. Violating Demeter isn't ALWAYS the worst.


Should you use this in production?
=================================================================================================================
I don't. It's probably fine??? But I haven't written any tests yet. I use it to quickly look over records in a 
Rails env. Use at your own risk!!!


Example:
=================================================================================================================

Using ruby's map method: User.all.map{ |user| [user.id, user.first_name, user.last_name, user.created_at, 
user.some_instance_method.demeter.hates.you] }

Using ruby's ampersand shorthand: User.all.map(&:first_name) (that's it, you're restricted to one attribute)

*****************************************************************************************************************


With map_by: User.all.map_by(:id, :first_name, :last_name, :created_at, 'some_instance_method.demeter.hates.you')


*****************************************************************************************************************

Soooo much easier to type.
