# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_reader :str

    def initialize(str)
        @str = str 
    end

    def parse
        b= @str.length
        if !!(@str =~ /,/) == true
            @str.split(", ").uniq
        elsif !!(@str =~ /\s/) == true
            @str.split(" ").uniq
        elsif !!(@str =~ /, {1,b}/) == true && !!(@str =~ /\s{1,b}/) == true
            @str.split(", ").uniq + @str.split(" ").uniq
        else
            []
        end
    end


end
