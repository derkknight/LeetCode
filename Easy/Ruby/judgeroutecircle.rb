=begin
657
Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.

The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.
=end

# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
    downs = moves.count("D")
    ups = moves.count("U")
    lefts = moves.count("L")
    rights = moves.count("R")
    if downs == ups && lefts == rights
        return true
    end
    
    return false
end