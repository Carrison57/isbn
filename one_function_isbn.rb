def isbn_number(string)

        string_to_array = string.split("")

        remove_from_array = [" ", "-"]
        remove_from_array.each do |symbol|
            string_to_array.delete(symbol)
        end

        string_to_array = string_to_array.join

        if string_to_array.length > 9
            p "Please enter 9 numeric characters."
        else
            if string_to_array =~ /[^0123456789]/
                p "Please input only numeric characters."
            else
                string_to_array = string_to_array.split("")

                return_array = []
                string_to_array.each_with_index do |value, index|
                    if index < 9
                        return_value = (index + 1) * value.to_i
                        return_array.push(return_value)
                    end
                end

                array_sum = return_array.inject(&:+)

                sum_modulos_eleven = array_sum % 11

                if sum_modulos_eleven == 10
                    final_isbn = string_to_array.push("X")
                else
                    final_isbn = string_to_array.push(sum_modulos_eleven.to_s)
                end
                p final_isbn

            end
        end
end

isbn_number("47804006")