note
	description: "Summary description for {STUDENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	STUDENT
inherit PERSON
	redefine
		out
	end
create
	make,
	make_from_io

feature -- Output

	out: STRING
		-- display as string
		do
			Result := "[STUDENT first_name=" + first_name + ", last_name=" + last_name + "]"
		end

end
