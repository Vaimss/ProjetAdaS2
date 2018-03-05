with ada.text_io, gnat.calendar.time_io;
use  ada.text_io, gnat.calendar.time_io;

Package body Dates is

	Procedure Get (date: out time) is
		s: string (1..11);
		k: integer;
	begin
		get_line (s, k); date := value(s(1..k));
	end Get;

	Procedure Put (date: in  time) is
	begin
		put_time(date, "Date   :  %d/%m/%Y");
	end Put;

end Dates;