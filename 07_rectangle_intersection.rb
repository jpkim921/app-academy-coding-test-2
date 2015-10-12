def rec_intersection(rect1, rect2)

    #first lets get rid of the nil case
    #In this case, there is a pattern for x or y (not neccecarily both)
    # r1 r1 r2 r2 in terms of order or r2 r2 r1 r1 
    no_overlap = ((rect1[1][0] < rect2[0][1])||(rect1[1][1] < rect2[0][1]))||(rect2[1][0] < rect1[0][1])||(rect2[1][1] < rect2[0][1])
    if no_overlap
        return nil
    
    #Now lets handle the other cases
    else
        left_x = [rect1[0][0],rect2[0][0]].max
        right_x = [rect1[1][0],rect2[1][0]].min
        bottom_y = [rect1[0][1],rect2[0][1]].max
        top_y = [rect1[1][1],rect2[1][1]].min
        
        return [[left_x,bottom_y],[right_x,top_y]]
    
    end



end
