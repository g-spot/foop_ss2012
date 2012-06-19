note
	description: "Summary description for {PERSON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PERSON
inherit
	ANY
		redefine
			out
		end
create
	make,
	make_from_io

feature {NONE} -- Initialization

	make (a_first_name, a_last_name : STRING)
		-- create with values a_first_name and a_last_name
		do
			set_first_name (a_first_name)
			set_last_name (a_last_name)
		ensure
			--first_name_set: first_name = "BCD"
			--last_name_set: last_name = "EFG"
		end

	make_from_io
		-- create with values from system in
		do
			io.put_string ("First Name: ")
			io.read_line
			create first_name.make_from_string (io.last_string)
			io.put_string ("Last Name: ")
			io.read_line
			create last_name.make_from_string (io.last_string)
		end

feature -- Access

	first_name: STRING assign set_first_name
		-- the first name of the person
	last_name: STRING assign set_last_name
		-- the last name of the person

feature -- Element change

	set_first_name (a_first_name : STRING)
		-- set first_name to a_first_name
		require
			not a_first_name.is_empty
		do
			first_name := a_first_name
		ensure
			first_name_set: first_name = a_first_name
		end

	set_last_name (a_last_name : STRING)
		-- set last_name to a_last_name
		require
			not a_last_name.is_empty
		do
			last_name := a_last_name
		ensure
			last_name_set: last_name = a_last_name
		end

feature -- Output

	out: STRING
		-- display as string
		do
			Result := "[PERSON first_name=" + first_name + ", last_name=" + last_name + "]"
		end

invariant
	invariant_clause:
		not first_name.is_empty
		not last_name.is_empty
end
