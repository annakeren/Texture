function output_args = ICV_returnBinary(c, neighbour)

    if neighbour > c
        binary = 1; 
    else
        binary = 0; 
    end
    output_args = binary;
end

