def read_write
	file = File.open('isbn_csv.csv', 'r')
	contents = file.read
	new_csv_file = 'new_isbn_csv_file.csv'
	write_to_file = File.open(new_csv_file, 'w')
		write_to_file.puts contents
		write_to_file.close
end

read_write