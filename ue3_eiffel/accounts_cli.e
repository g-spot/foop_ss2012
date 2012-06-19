note
	description : "accounts application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	ACCOUNTS_CLI

inherit
	ARGUMENTS

create
	run

feature -- Initialization

	run
			-- Run application.
		local
			person : STUDENT
		do
			--from

			--until
				--equal(io.last_string, "exit")
			--loop
				--io.put_string("please give me some input: ")
				--io.read_line
				--io.put_string("given input was: " + io.last_string)
				--io.put_new_line
			--end
			create person.make_from_io
			io.put_string (person.out)
			io.read_line
		end

end
